.class Lcom/car/dvr/FloatService$2;
.super Landroid/content/BroadcastReceiver;
.source "FloatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/FloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/FloatService;


# direct methods
.method constructor <init>(Lcom/car/dvr/FloatService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.car.dvr.camera_onoff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "com.car.videorecorder.FloatService.closeview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1, v3}, Lcom/car/dvr/FloatService;->access$302(Lcom/car/dvr/FloatService;Z)Z

    .line 107
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$400(Lcom/car/dvr/FloatService;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string v1, "com.car.videorecorder.recording_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1, v5}, Lcom/car/dvr/FloatService;->access$102(Lcom/car/dvr/FloatService;Z)Z

    .line 110
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iget-boolean v1, v1, Lcom/car/dvr/FloatService;->mPreviewRecover:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/dvr/FloatView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iput-boolean v3, v1, Lcom/car/dvr/FloatService;->mPreviewRecover:Z

#by boba 04.03.2021
#show preview
:goto_show

    .line 115
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$600(Lcom/car/dvr/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v1

#by boba 04.03.2021
#show preview
if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/car/dvr/FloatView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

#by boba 03.03.2021
#dvr float size
iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;
invoke-static {v1}, Lcom/car/dvr/FloatService;->access$showP(Lcom/car/dvr/FloatService;)V

    .line 118
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    .line 119
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iget-object v2, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$800(Lcom/car/dvr/FloatService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/car/dvr/FloatService;->access$900(Lcom/car/dvr/FloatService;I)Z

    goto :goto_0

    .line 121
    :cond_4
    const-string v1, "com.car.videorecorder.recording_stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

#by boba 04.03.2021
#show preview
#    if-eqz v1, :cond_0
if-eqz v1, :cond_show

    .line 122
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1, v3}, Lcom/car/dvr/FloatService;->access$102(Lcom/car/dvr/FloatService;Z)Z

    .line 123
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 124
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :cond_5
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/dvr/FloatView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iput-boolean v5, v1, Lcom/car/dvr/FloatService;->mPreviewRecover:Z

#by boba 04.03.2021
#show preview
:goto_hide

    .line 128
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$600(Lcom/car/dvr/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v1

#by boba 04.03.2021
#show preview
if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/car/dvr/FloatView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

#by boba 03.03.2021
#dvr float size
iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;
invoke-static {v1}, Lcom/car/dvr/FloatService;->access$hideP(Lcom/car/dvr/FloatService;)V

    .line 131
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    goto/16 :goto_0

#by boba 04.03.2021
#show preview
:cond_show
const-string v1, "com.car.videorecorder.show_preview"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_hide
goto :goto_show
:cond_hide
const-string v1, "com.car.videorecorder.hide_preview"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_0
goto :goto_hide
.end method
