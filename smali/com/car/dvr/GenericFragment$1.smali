.class Lcom/car/dvr/GenericFragment$1;
.super Ljava/lang/Object;
.source "GenericFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/GenericFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/GenericFragment;


# direct methods
.method constructor <init>(Lcom/car/dvr/GenericFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/GenericFragment$1;->this$0:Lcom/car/dvr/GenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v2, p0, Lcom/car/dvr/GenericFragment$1;->this$0:Lcom/car/dvr/GenericFragment;

    invoke-static {v2}, Lcom/car/dvr/GenericFragment;->access$000(Lcom/car/dvr/GenericFragment;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p1, v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/car/dvr/GenericFragment$1;->this$0:Lcom/car/dvr/GenericFragment;

    invoke-static {v2}, Lcom/car/dvr/GenericFragment;->access$100(Lcom/car/dvr/GenericFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00d8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a00d9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a00da

    new-instance v3, Lcom/car/dvr/GenericFragment$1$1;

    invoke-direct {v3, p0}, Lcom/car/dvr/GenericFragment$1$1;-><init>(Lcom/car/dvr/GenericFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0079

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
