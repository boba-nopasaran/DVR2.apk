.class public Lcom/calmcar/adas/apiserver/AdasConf$CarConf;
.super Ljava/lang/Object;
.source "AdasConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/apiserver/AdasConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarConf"
.end annotation


# static fields
.field public static CRASH_FREQVAL:I

.field public static CRASH_PRESPEED:I

.field public static CRASH_PRETIME:I

.field public static CRASH_SENVAL:I

.field public static DIS_FREQVAL:I

.field public static DIS_PRESPEED:I

.field public static DIS_PRETIME:I

.field public static DIS_SENVAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x5

    const/4 v1, 0x1

    sput v2, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRESPEED:I

    sput v1, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_SENVAL:I

    sput v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_FREQVAL:I

    const/4 v0, 0x6

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRETIME:I

    sput v2, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRESPEED:I

    sput v1, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_SENVAL:I

    sput v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_FREQVAL:I

    const/16 v0, 0x9

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRETIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
