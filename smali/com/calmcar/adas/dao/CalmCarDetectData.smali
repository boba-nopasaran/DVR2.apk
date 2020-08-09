.class public Lcom/calmcar/adas/dao/CalmCarDetectData;
.super Ljava/lang/Object;
.source "CalmCarDetectData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;
    }
.end annotation


# instance fields
.field private carPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;",
            ">;"
        }
    .end annotation
.end field

.field private time:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarPoint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/calmcar/adas/dao/CalmCarDetectData;->carPoint:Ljava/util/List;

    return-object v0
.end method

.method public getTime()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/dao/CalmCarDetectData;->time:D

    return-wide v0
.end method

.method public setCarPoint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/calmcar/adas/dao/CalmCarDetectData;->carPoint:Ljava/util/List;

    return-void
.end method

.method public setTime(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/dao/CalmCarDetectData;->time:D

    return-void
.end method
