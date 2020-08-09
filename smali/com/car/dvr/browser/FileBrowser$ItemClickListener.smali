.class Lcom/car/dvr/browser/FileBrowser$ItemClickListener;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileBrowser;


# direct methods
.method private constructor <init>(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileBrowser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/browser/FileInfo;

    move-object v3, v6

    check-cast v3, Lcom/car/dvr/browser/FileInfo;

    iget-object v6, p0, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v6}, Lcom/car/dvr/browser/FileBrowser;->access$400(Lcom/car/dvr/browser/FileBrowser;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v6}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v6

    sget-object v9, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v6, v9, :cond_0

    const v6, 0x7f0d0050

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    const v6, 0x7f0d004e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v6, 0x7f0d004b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-boolean v6, v3, Lcom/car/dvr/browser/FileInfo;->selected:Z

    if-eqz v6, :cond_1

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-boolean v6, v3, Lcom/car/dvr/browser/FileInfo;->selected:Z

    if-nez v6, :cond_2

    move v6, v7

    :goto_2
    iput-boolean v6, v3, Lcom/car/dvr/browser/FileInfo;->selected:Z

    iget-object v6, p0, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v6}, Lcom/car/dvr/browser/FileBrowser;->access$1800(Lcom/car/dvr/browser/FileBrowser;)V

    :goto_3
    return-void

    :cond_0
    const v6, 0x7f0d0048

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v6, -0x38ea7b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v6, v4}, Lcom/car/dvr/browser/FileBrowser;->access$1300(Lcom/car/dvr/browser/FileBrowser;Ljava/lang/String;)Z

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v6, v3}, Lcom/car/dvr/browser/FileBrowser;->access$1900(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileInfo;)V

    goto :goto_3
.end method
