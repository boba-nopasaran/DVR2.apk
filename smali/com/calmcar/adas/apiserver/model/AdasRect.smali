.class public Lcom/calmcar/adas/apiserver/model/AdasRect;
.super Ljava/lang/Object;
.source "AdasRect.java"


# instance fields
.field private absDis:D

.field private br:Lcom/calmcar/adas/apiserver/model/AdasPoint;

.field private showDis:Z

.field private t1:Lcom/calmcar/adas/apiserver/model/AdasPoint;


# direct methods
.method public constructor <init>(Lcom/calmcar/adas/apiserver/model/AdasPoint;Lcom/calmcar/adas/apiserver/model/AdasPoint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->showDis:Z

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->t1:Lcom/calmcar/adas/apiserver/model/AdasPoint;

    iput-object p2, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->br:Lcom/calmcar/adas/apiserver/model/AdasPoint;

    return-void
.end method


# virtual methods
.method public getAbsDis()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->absDis:D

    return-wide v0
.end method

.method public getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->br:Lcom/calmcar/adas/apiserver/model/AdasPoint;

    return-object v0
.end method

.method public getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->t1:Lcom/calmcar/adas/apiserver/model/AdasPoint;

    return-object v0
.end method

.method public isShowDis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->showDis:Z

    return v0
.end method

.method public setAbsDis(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->absDis:D

    return-void
.end method

.method public setBr(Lcom/calmcar/adas/apiserver/model/AdasPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->br:Lcom/calmcar/adas/apiserver/model/AdasPoint;

    return-void
.end method

.method public setShowDis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->showDis:Z

    return-void
.end method

.method public setT1(Lcom/calmcar/adas/apiserver/model/AdasPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/model/AdasRect;->t1:Lcom/calmcar/adas/apiserver/model/AdasPoint;

    return-void
.end method
