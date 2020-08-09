.class Lcom/car/dvr/GenericFragment$1$1;
.super Ljava/lang/Object;
.source "GenericFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/GenericFragment$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/GenericFragment$1;


# direct methods
.method constructor <init>(Lcom/car/dvr/GenericFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/GenericFragment$1$1;->this$1:Lcom/car/dvr/GenericFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/GenericFragment$1$1;->this$1:Lcom/car/dvr/GenericFragment$1;

    iget-object v1, v1, Lcom/car/dvr/GenericFragment$1;->this$0:Lcom/car/dvr/GenericFragment;

    invoke-static {v1}, Lcom/car/dvr/GenericFragment;->access$100(Lcom/car/dvr/GenericFragment;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.pano.show"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment$1$1;->this$1:Lcom/car/dvr/GenericFragment$1;

    iget-object v1, v1, Lcom/car/dvr/GenericFragment$1;->this$0:Lcom/car/dvr/GenericFragment;

    invoke-static {v1}, Lcom/car/dvr/GenericFragment;->access$100(Lcom/car/dvr/GenericFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/car/dvr/CameraSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "biaoding"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/dvr/GenericFragment$1$1;->this$1:Lcom/car/dvr/GenericFragment$1;

    iget-object v1, v1, Lcom/car/dvr/GenericFragment$1;->this$0:Lcom/car/dvr/GenericFragment;

    invoke-virtual {v1, v0}, Lcom/car/dvr/GenericFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/car/dvr/GenericFragment$1$1;->this$1:Lcom/car/dvr/GenericFragment$1;

    iget-object v1, v1, Lcom/car/dvr/GenericFragment$1;->this$0:Lcom/car/dvr/GenericFragment;

    iget-object v1, v1, Lcom/car/dvr/GenericFragment;->mBaseActivity:Lcom/car/dvr/BaseActivity;

    invoke-virtual {v1}, Lcom/car/dvr/BaseActivity;->finish()V

    return-void
.end method
