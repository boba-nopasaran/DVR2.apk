.class Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;
.super Ljava/lang/Object;
.source "FileGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForBlankAreaLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileGridView;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;->this$0:Lcom/car/dvr/browser/FileGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;->this$0:Lcom/car/dvr/browser/FileGridView;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileGridView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;->this$0:Lcom/car/dvr/browser/FileGridView;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileGridView;->performBlankAreaLongClick()Z

    :cond_0
    return-void
.end method
