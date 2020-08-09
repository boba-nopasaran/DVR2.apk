.class Lcom/car/dvr/browser/FileListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field f_checkbox:Landroid/widget/CheckBox;

.field f_container:Landroid/view/View;

.field f_icon:Landroid/widget/ImageView;

.field f_line:Landroid/widget/TextView;

.field f_text:Landroid/widget/TextView;

.field f_time:Landroid/widget/TextView;

.field f_title:Landroid/widget/TextView;

.field mode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

.field final synthetic this$0:Lcom/car/dvr/browser/FileListAdapter;


# direct methods
.method private constructor <init>(Lcom/car/dvr/browser/FileListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->this$0:Lcom/car/dvr/browser/FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/browser/FileListAdapter;Lcom/car/dvr/browser/FileListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;-><init>(Lcom/car/dvr/browser/FileListAdapter;)V

    return-void
.end method
