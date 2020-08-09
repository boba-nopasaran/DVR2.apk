.class public Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;
.super Ljava/lang/Object;
.source "WarnSpeakManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private soundId1:I

.field private soundId2:I

.field private soundId3:I

.field private soundId4:I

.field private soundId5:I

.field private soundPool:Landroid/media/SoundPool;

.field private start_time:J

.field private streamId1:I

.field private streamId2:I

.field private streamId3:I

.field private streamId4:I

.field private streamId5:I

.field private timeCrash:J

.field private timeLaunch:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPoolInit(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public adasStart()V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeCrash:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeCrash:J

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->streamId5:I

    :cond_0
    return-void
.end method

.method public carOutLine()V
    .locals 8

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->start_time:J

    sub-long/2addr v4, v6

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_FREQVAL:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->start_time:J

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    const/4 v5, 0x0

    move v3, v2

    move v4, v1

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->streamId1:I

    :cond_0
    return-void
.end method

.method public frontCarCrash()V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeCrash:J

    sub-long/2addr v0, v4

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_FREQVAL:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeCrash:J

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->streamId3:I

    :cond_0
    return-void
.end method

.method public frontCarLaunchWarn()V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeLaunch:J

    sub-long/2addr v0, v4

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_FREQVAL:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeLaunch:J

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->streamId4:I

    :cond_0
    return-void
.end method

.method public frontCarSafeDistance()V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeCrash:J

    sub-long/2addr v0, v4

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_FREQVAL:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->timeCrash:J

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->streamId2:I

    :cond_0
    return-void
.end method

.method public initVideoPlayers(IIII)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundId1:I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundId2:I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundId3:I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p4, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundId4:I

    return-void
.end method

.method public initVideoPlayers(IIIII)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->initVideoPlayers(IIII)V

    if-lez p5, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p5, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundId5:I

    :cond_0
    return-void
.end method

.method public loadSoundNew([I)[I
    .locals 6

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->mContext:Landroid/content/Context;

    aget v4, p1, v0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public playSoud(I)V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method public soundPoolInit(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method
