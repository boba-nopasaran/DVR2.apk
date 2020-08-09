.class public Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;
.super Ljava/lang/Object;
.source "AdasConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/apiserver/AdasConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaneConf"
.end annotation


# static fields
.field public static OUT_FREQVAL:I

.field public static OUT_PRESPEED:I

.field public static OUT_PRETIME:I

.field public static OUT_SENVAL:I

.field public static SWITCH_FREQVAL:I

.field public static SWITCH_PRESPEED:I

.field public static SWITCH_PRETIME:I

.field public static SWITCH_SENVAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRESPEED:I

    const/4 v0, 0x1

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_SENVAL:I

    const/4 v0, 0x5

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_FREQVAL:I

    const/4 v0, 0x0

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRETIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
