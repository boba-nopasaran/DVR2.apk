.class Lcom/car/dvr/browser/FileBrowser$3;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileBrowser;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileBrowser;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$3;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$3;->this$0:Lcom/car/dvr/browser/FileBrowser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/browser/FileBrowser;->setFloatView(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$3;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileBrowser;->finish()V

    return-void
.end method
