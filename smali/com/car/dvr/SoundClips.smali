.class public Lcom/car/dvr/SoundClips;
.super Ljava/lang/Object;
.source "SoundClips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;,
        Lcom/car/dvr/SoundClips$Player;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x0

.field public static final SHUTTER_CLICK:I = 0x3

.field public static final START_VIDEO_RECORDING:I = 0x1

.field public static final STOP_VIDEO_RECORDING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayer(Landroid/content/Context;)Lcom/car/dvr/SoundClips$Player;
    .locals 1

    new-instance v0, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;

    invoke-direct {v0}, Lcom/car/dvr/SoundClips$MediaActionSoundPlayer;-><init>()V

    return-object v0
.end method
