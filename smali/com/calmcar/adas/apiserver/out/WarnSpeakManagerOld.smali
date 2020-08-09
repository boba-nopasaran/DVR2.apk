.class public Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;
.super Ljava/lang/Object;
.source "WarnSpeakManagerOld.java"


# instance fields
.field private frontCarLaunchResId:I

.field private laneWarnResId:I

.field private levelOneWarnResId:I

.field private levelTwoWarnResId:I

.field private mContext:Landroid/content/Context;

.field private mediaPlayerAdasStart:Landroid/media/MediaPlayer;

.field private mediaPlayerLaunch:Landroid/media/MediaPlayer;

.field private mediaPlayerOutLine:Landroid/media/MediaPlayer;

.field private mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

.field private mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

.field private playThread:Ljava/lang/Thread;

.field start_time:J

.field private time:J

.field private timeCrash:J

.field private timeLaunch:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->laneWarnResId:I

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->levelOneWarnResId:I

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->levelTwoWarnResId:I

    iput v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->frontCarLaunchResId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->start_time:J

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playBGSound(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private playBGSound(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$2;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$2;-><init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$3;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$3;-><init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$4;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$4;-><init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$5;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$5;-><init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$6;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$6;-><init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public adasStart()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeCrash:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeCrash:J

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->play(I)V

    :cond_0
    return-void
.end method

.method public carOutLine()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->start_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->time:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->play(I)V

    :cond_0
    return-void
.end method

.method public frontCarCrash()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeCrash:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeCrash:J

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->play(I)V

    :cond_0
    return-void
.end method

.method public frontCarLaunchWarn()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeLaunch:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeLaunch:J

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->play(I)V

    :cond_0
    return-void
.end method

.method public frontCarSafeDistance()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeCrash:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->timeCrash:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->play(I)V

    :cond_0
    return-void
.end method

.method public getFrontCarLaunchResId()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->frontCarLaunchResId:I

    return v0
.end method

.method public getLaneWarnResId()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->laneWarnResId:I

    return v0
.end method

.method public getLevelOneWarnResId()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->levelOneWarnResId:I

    return v0
.end method

.method public getLevelTwoWarnResId()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->levelTwoWarnResId:I

    return v0
.end method

.method public initVideoPlayers(IIII)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    :cond_1
    if-lez p3, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    :cond_2
    if-lez p4, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    :cond_3
    return-void
.end method

.method public initVideoPlayers(IIIII)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->initVideoPlayers(IIII)V

    if-lez p5, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mContext:Landroid/content/Context;

    invoke-static {v0, p5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$1;

    invoke-direct {v1, p0, p1}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$1;-><init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setFrontCarLaunchResId(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->frontCarLaunchResId:I

    return-void
.end method

.method public setLaneWarnResId(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->laneWarnResId:I

    return-void
.end method

.method public setLevelOneWarnResId(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->levelOneWarnResId:I

    return-void
.end method

.method public setLevelTwoWarnResId(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->levelTwoWarnResId:I

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_4
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerOutLine:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistance:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerSafeDistanceCrash:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerLaunch:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->mediaPlayerAdasStart:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playThread:Ljava/lang/Thread;

    :cond_5
    return-void
.end method
