## ---- echo=F-------------------------------------------------------------
knitr::opts_chunk$set(cache=FALSE, fig.height=3, fig.width = 7, comment=NULL, eval=T, tiy=T, message = F, warning = F, width=80)

## ---- eval=F-------------------------------------------------------------
#  vignette("ExploratoryAnalysis")

## ------------------------------------------------------------------------
library(RandomActsofPizza)
library(dplyr)          # data manipulation
library(caret)          # model building
library(rpart.plot)     # plot CART classifier
data(train)
data(test)

## ----baseline------------------------------------------------------------
train %>%
    summarise(N=length(req_received_pizza),
              Success=sum(req_received_pizza)) %>%
    mutate(Percent=paste(round(Success/N,3)*100,"%",sep=""))

## ------------------------------------------------------------------------
library(doParallel)
cl <- makeCluster(3)
registerDoParallel(cl)

## ----logisticRegression, results='hide'----------------------------------
train <- train %>%
    select(-request_id, -req_subreddits_at_request, -req_username) %>%
    mutate(req_received_pizza= factor(req_received_pizza, labels=c("N","Y")))

glm_ctrl<- trainControl(method="repeatedCV",
                        number=10,
                        repeats=10,
                        classProbs=TRUE,
                        summaryFunction = twoClassSummary,
                        allowParallel = TRUE)

LogMdl <- train(y=train$req_received_pizza,
                x=subset(train, select=-req_received_pizza),
                method="glm",
                metric="ROC",
                trControl=glm_ctrl,
                family= "binomial") 


stopCluster(cl)

## ------------------------------------------------------------------------
summary(LogMdl)

## ----CART, warning=FALSE-------------------------------------------------
cl <- makeCluster(3)
registerDoParallel(cl)

Cart_ctrl<- trainControl(method="cv",
                        number=10,
                        classProbs=TRUE,
                        summaryFunction = twoClassSummary,
                        allowParallel = TRUE)

CartMdl<- train(y=train$req_received_pizza,
                x=subset(train, select=-req_received_pizza),
                metric="ROC",
                method="rpart",
                trControl= Cart_ctrl,
                cp=.05)



stopCluster(cl)


prp(CartMdl$finalModel,
    main= "RAOP Classification Tree",
    extra=1,
    box.col=c("pink","palegreen")[CartMdl$frame$yval],
    leaf.round=2)


## ------------------------------------------------------------------------
LogScore<- predict(LogMdl, data=train, type="prob")
confusionMatrix(LogScore[,2]>.5, train$req_received_pizza=="Y", positive="TRUE")

CartScore<- predict(CartMdl, data=train, type="prob")
confusionMatrix(CartScore[,2]>.5, train$req_received_pizza=="Y", positive="TRUE")

MergedScore<- MergeModels(cbind(LogScore[,2],CartScore[,2]),c(.7,.3))
confusionMatrix(MergedScore>.5, train$req_received_pizza=="Y", positive="TRUE")

