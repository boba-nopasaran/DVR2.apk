.class public Ltianjin/calmcar/calmcar_adas/AdasWraper;
.super Ljava/lang/Object;
.source "AdasWraper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronized native declared-synchronized Init()I
.end method

.method public synchronized native declared-synchronized Release()V
.end method

.method public native getKimiStr()Ljava/lang/String;
.end method

.method public synchronized native declared-synchronized lane_detect([BIII)Ljava/lang/String;
.end method

.method public synchronized native declared-synchronized lane_detect_default()Ljava/lang/String;
.end method

.method public native pass(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setLDWParameter(SF)V
.end method

.method public native setVPPara(FF)V
.end method
