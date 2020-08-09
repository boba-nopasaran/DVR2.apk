.class public Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;
.super Ljava/lang/Object;
.source "AdasConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/apiserver/AdasConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeoConf"
.end annotation


# static fields
.field public static CRASH_FREQVAL:I

.field public static CRASH_PRESPEED:I

.field public static CRASH_PRETIME:I

.field public static CRASH_SENVAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    sput v1, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_PRESPEED:I

    const/4 v0, 0x1

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_SENVAL:I

    sput v1, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_FREQVAL:I

    const/16 v0, 0x8

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_PRETIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
