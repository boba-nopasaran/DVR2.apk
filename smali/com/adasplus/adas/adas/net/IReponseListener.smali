.class public interface abstract Lcom/adasplus/adas/adas/net/IReponseListener;
.super Ljava/lang/Object;
.source "IReponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract afterRequest()V
.end method

.method public abstract beforeRequest()V
.end method

.method public abstract connectNetworkFail(Ljava/lang/String;)V
.end method

.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/adasplus/adas/adas/net/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adasplus/adas/adas/net/Result",
            "<TT;>;)V"
        }
    .end annotation
.end method
