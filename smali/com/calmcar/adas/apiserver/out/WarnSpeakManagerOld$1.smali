.class Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$1;
.super Ljava/lang/Object;
.source "WarnSpeakManagerOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;I)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$1;->this$0:Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;

    iput p2, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$1;->this$0:Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;

    iget v1, p0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld$1;->val$type:I

    invoke-static {v0, v1}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;->access$000(Lcom/calmcar/adas/apiserver/out/WarnSpeakManagerOld;I)V

    return-void
.end method
