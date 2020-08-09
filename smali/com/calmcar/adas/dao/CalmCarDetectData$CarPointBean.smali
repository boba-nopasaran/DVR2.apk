.class public Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;
.super Ljava/lang/Object;
.source "CalmCarDetectData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/dao/CalmCarDetectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarPointBean"
.end annotation


# instance fields
.field private x0:I

.field private x1:I

.field private y0:I

.field private y1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX0()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->x0:I

    return v0
.end method

.method public getX1()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->x1:I

    return v0
.end method

.method public getY0()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->y0:I

    return v0
.end method

.method public getY1()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->y1:I

    return v0
.end method

.method public setX0(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->x0:I

    return-void
.end method

.method public setX1(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->x1:I

    return-void
.end method

.method public setY0(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->y0:I

    return-void
.end method

.method public setY1(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->y1:I

    return-void
.end method
