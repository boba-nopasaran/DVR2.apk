.class public Lcom/car/dvr/browser/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/browser/FileListAdapter$1;,
        Lcom/car/dvr/browser/FileListAdapter$ViewHolder;,
        Lcom/car/dvr/browser/FileListAdapter$MyHandler;
    }
.end annotation


# static fields
.field public static final COLOR_SELECTED:I = -0x38ea7b

.field public static final COLOR_UNSELECT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DVR.FileAdapter"

.field public static final UNSELECT:I


# instance fields
.field private isZoom:I

.field private mContext:Landroid/content/Context;

.field private mFileBrowser:Lcom/car/dvr/browser/FileBrowser;

.field private mFileInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIcon_audio:Landroid/graphics/Bitmap;

.field private mIcon_file:Landroid/graphics/Bitmap;

.field private mIcon_folder:Landroid/graphics/Bitmap;

.field private mIcon_image:Landroid/graphics/Bitmap;

.field private mIcon_lockFolder:Landroid/graphics/Bitmap;

.field private mIcon_lock_video:Landroid/graphics/Bitmap;

.field private mIcon_video:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;I)V"
        }
    .end annotation

    const/16 v4, 0x1000

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileInfos:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/dvr/browser/FileListAdapter;->isZoom:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/car/dvr/browser/FileListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v0, p1

    check-cast v0, Lcom/car/dvr/browser/FileBrowser;

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileBrowser:Lcom/car/dvr/browser/FileBrowser;

    iget-object v1, p0, Lcom/car/dvr/browser/FileListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileInfos:Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p3, p0, Lcom/car/dvr/browser/FileListAdapter;->isZoom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_folder:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_folder:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/car/dvr/browser/FileThumbCache;->typeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_lockFolder:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020023

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_file:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_image:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_video:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_video:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/car/dvr/browser/FileThumbCache;->typeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_lock_video:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/car/dvr/browser/FileListAdapter$MyHandler;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileListAdapter$MyHandler;-><init>(Lcom/car/dvr/browser/FileListAdapter;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/car/dvr/browser/FileListAdapter;)Lcom/car/dvr/browser/FileBrowser;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileBrowser:Lcom/car/dvr/browser/FileBrowser;

    return-object v0
.end method

.method private setupViewHolder(Landroid/view/View;ILcom/car/dvr/browser/FileInfo;)Lcom/car/dvr/browser/FileListAdapter$ViewHolder;
    .locals 10

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move-object v2, v6

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;

    if-nez v2, :cond_2

    const/4 v4, 0x1

    new-instance v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;-><init>(Lcom/car/dvr/browser/FileListAdapter;Lcom/car/dvr/browser/FileListAdapter$1;)V

    :goto_1
    const-string v6, "DVR.FileAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "## Position:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", File:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Mode["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->mode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileBrowser:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v8}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileBrowser:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v6}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v6

    iput-object v6, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->mode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    const v6, 0x7f0d0048

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0d0050

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->mode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    sget-object v7, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v6, v7, :cond_4

    move-object v0, v3

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v5, 0x7f0d0049

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_container:Landroid/view/View;

    const v5, 0x7f0d004b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_title:Landroid/widget/TextView;

    const v5, 0x7f0d004d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_time:Landroid/widget/TextView;

    const v5, 0x7f0d004c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_text:Landroid/widget/TextView;

    const v5, 0x7f0d004a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    const v5, 0x7f0d004e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_checkbox:Landroid/widget/CheckBox;

    const v5, 0x7f0d004f

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_line:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v6, v2, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->mode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    iget-object v7, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileBrowser:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v7}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v7

    if-eq v6, v7, :cond_3

    const/4 v4, 0x1

    :goto_3
    goto/16 :goto_1

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    move-object v0, v1

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/browser/FileListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/browser/FileListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileInfos:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/dvr/browser/FileInfo;

    if-nez p2, :cond_0

    iget-object v10, p0, Lcom/car/dvr/browser/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03000b

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2, p1, v3}, Lcom/car/dvr/browser/FileListAdapter;->setupViewHolder(Landroid/view/View;ILcom/car/dvr/browser/FileInfo;)Lcom/car/dvr/browser/FileListAdapter$ViewHolder;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_0
    return-object p2

    :cond_1
    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->mode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    sget-object v11, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v10, v11, :cond_2

    iget-object v11, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_container:Landroid/view/View;

    rem-int/lit8 v10, p1, 0x2

    const/4 v12, 0x1

    if-ne v10, v12, :cond_3

    const v10, -0xbbbbbc

    :goto_1
    invoke-virtual {v11, v10}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    invoke-virtual {v3}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_title:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_title:Landroid/widget/TextView;

    iget-boolean v10, v3, Lcom/car/dvr/browser/FileInfo;->selected:Z

    if-eqz v10, :cond_4

    const v10, -0x38ea7b

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v11, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->isLockType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_lockFolder:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_text:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_time:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_time:Landroid/widget/TextView;

    const v11, -0x777778

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileBrowser:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v10}, Lcom/car/dvr/browser/FileBrowser;->isInSelectedMode()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_checkbox:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_checkbox:Landroid/widget/CheckBox;

    iget-boolean v11, v3, Lcom/car/dvr/browser/FileInfo;->selected:Z

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    const v10, -0xcccccd

    goto :goto_1

    :cond_4
    const/4 v10, -0x1

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_folder:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_6
    iget-object v5, v3, Lcom/car/dvr/browser/FileInfo;->size:Ljava/lang/String;

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_text:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_text:Landroid/widget/TextView;

    const v11, -0x777778

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->mode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    sget-object v11, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v10, v11, :cond_a

    iget v10, v3, Lcom/car/dvr/browser/FileInfo;->fileType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->isLockType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_lock_video:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_7
    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_video:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_8
    iget v10, v3, Lcom/car/dvr/browser/FileInfo;->fileType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_image:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_9
    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_file:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_a
    iget-object v10, p0, Lcom/car/dvr/browser/FileListAdapter;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/car/dvr/browser/FileListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-static {v10, v3, v11, v12}, Lcom/car/dvr/browser/FileThumbCache;->getThumbBitmap(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;Landroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v10, Lcom/car/dvr/browser/FileThumbCache;->sNullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v10, "DVR.FileAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bitmap: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_icon:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/car/dvr/browser/FileListAdapter;->mIcon_video:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_c
    iget-object v10, v4, Lcom/car/dvr/browser/FileListAdapter$ViewHolder;->f_checkbox:Landroid/widget/CheckBox;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setStatus(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/car/dvr/browser/FileListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/car/dvr/browser/FileListAdapter;->mFileInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileListAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
