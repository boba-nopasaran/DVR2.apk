.class Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$3;
.super Ljava/lang/Object;
.source "WarnSpeakManagerOld.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->playBGSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;


# direct methods
.method constructor <init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$3;->this$0:Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$3;->this$0:Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->access$102(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
