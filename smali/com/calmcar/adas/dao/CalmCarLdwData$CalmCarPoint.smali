.class public Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;
.super Ljava/lang/Object;
.source "CalmCarLdwData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/dao/CalmCarLdwData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalmCarPoint"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calmcar/adas/dao/CalmCarLdwData;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/calmcar/adas/dao/CalmCarLdwData;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->this$0:Lcom/calmcar/adas/dao/CalmCarLdwData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->y:I

    return-void
.end method
