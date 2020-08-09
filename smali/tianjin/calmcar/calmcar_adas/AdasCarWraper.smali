.class public Ltianjin/calmcar/calmcar_adas/AdasCarWraper;
.super Ljava/lang/Object;
.source "AdasCarWraper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native carDetect([BII)Ljava/lang/String;
.end method

.method public native carDetectHalf([BII)Ljava/lang/String;
.end method

.method public synchronized native declared-synchronized carInit()I
.end method

.method public synchronized native declared-synchronized carRelease()V
.end method

.method public native carStart()V
.end method

.method public native setVPPara(FF)V
.end method
