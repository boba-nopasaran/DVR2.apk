.class Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Lcom/car/dvr/SoundClips$Player;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaActionSoundPlayer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DVR.MediaActionSoundPlayer"


# instance fields
.field private mSound:Lcom/car/dvr/MediaActionSound;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/car/dvr/MediaActionSound;

    invoke-direct {v0}, Lcom/car/dvr/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->load(I)V

    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->load(I)V

    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->load(I)V

    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->load(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized play(I)V
    .locals 3

    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v0, "DVR.MediaActionSoundPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->play(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->play(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->play(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/MediaActionSound;->play(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    invoke-virtual {v0}, Lcom/car/dvr/MediaActionSound;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;->mSound:Lcom/car/dvr/MediaActionSound;

    :cond_0
    return-void
.end method
