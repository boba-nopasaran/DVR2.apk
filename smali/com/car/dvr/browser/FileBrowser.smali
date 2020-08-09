.class public Lcom/car/dvr/browser/FileBrowser;
.super Lcom/car/dvr/BaseActivity;
.source "FileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;,
        Lcom/car/dvr/browser/FileBrowser$ItemSelectedListener;,
        Lcom/car/dvr/browser/FileBrowser$ItemClickListener;,
        Lcom/car/dvr/browser/FileBrowser$DisplayMode;
    }
.end annotation


# static fields
.field protected static final CANCELING_DIALOG:I = 0x9

.field protected static final CIFS_DIALOG:I = 0x2

.field protected static final CIFS_DISCONNECT_DIALOG:I = 0x4

.field public static final CIFS_MODE:I = 0x0

.field protected static final DELETE_DIALOG:I = 0x6

.field protected static final DIALOG_DELETE_NONE_FILES:I = 0xa

.field protected static final DIALOG_STORAGE_NOT_EXIST:I = 0xb

.field protected static final HTCFUN_SH_DIALOG:I = 0x7

.field public static final MSG_DELETE_COMPLETE:I = 0x3ea

.field public static final MSG_DELETE_FAILED:I = 0x3ec

.field public static final MSG_DELETE_START:I = 0x3e9

.field public static final MSG_HIDE_PROGRESSBAR:I = 0x3ed

.field public static final MSG_MOVE_FILE:I = 0x3ee

.field public static final NFS_MODE:I = 0x1

.field protected static final OPEN_FAIL_DIALOG:I = 0x3

.field protected static final OPEN_TYPE_DIALOG:I = 0x8

.field private static final PREFIX_BACK_VIDEO:Ljava/lang/String; = "B"

.field private static final PREFIX_FRONT_VIDEO:Ljava/lang/String; = "F"

.field protected static final PROCESSING_DIALOG:I = 0x1

.field protected static final PROGRESS_DIALOG:I = 0x0

.field private static final REQUEST_SELECT_DATE:I = 0x3e9

.field public static final SCAN_CANCELED:I = 0x3e7

.field public static final SCAN_FINISHED:I = 0x3e6

.field public static final SCAN_HANDLE:I = 0x3e8

.field public static final SHARE_MODE:Ljava/lang/String; = "share_mode"

.field protected static final SHARE_MODE_DIALOG:I = 0x5

.field public static final START_PROGRESSBAR:I = 0x3e5

.field private static final SUFFIX_VIDEO:Ljava/lang/String; = ".ts"

.field static final TAG:Ljava/lang/String; = "DVR.FileBrowser"

.field private static final TIME_RANGE_ALL:I = 0x0

.field private static final TIME_RANGE_SELF_DEFINE:I = 0x3

.field private static final TIME_RANGE_TODAY:I = 0x1

.field private static final TIME_RANGE_WEEK:I = 0x2

.field private static mCurrentPath:Ljava/lang/String;

.field public static mFromOutOrIn:Z


# instance fields
.field private mAdapter:Lcom/car/dvr/browser/FileListAdapter;

.field private mCameraRange:Ljava/lang/String;

.field private mCustomerActionBar:Lcom/car/dvr/browser/CustomerActionBar;

.field private mDeleteDialog:Landroid/app/ProgressDialog;

.field private mDisplayMode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

.field private mEndDate:Ljava/util/Calendar;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileOperationHelper:Lcom/car/dvr/browser/FileOperationHelper;

.field private mFileScanner:Lcom/car/dvr/browser/FileScanner;

.field private mFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Lcom/car/dvr/browser/FileGridView;

.field final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mLastBackFile:Ljava/lang/String;

.field private mLastFrontFile:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMoveFilePath:Ljava/lang/String;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectAll:Z

.field private mSelectedMode:Z

.field private mService:Lcom/car/dvr/CameraService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceIntent:Landroid/content/Intent;

.field private mStartDate:Ljava/util/Calendar;

.field private mStoragePath:Ljava/lang/String;

.field private mTimeRange:I

.field private mToast:Landroid/widget/Toast;

.field private mToday:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/browser/FileBrowser;->mFromOutOrIn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/dvr/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mFileList:Ljava/util/List;

    iput-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mLastFrontFile:Ljava/lang/String;

    iput-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mLastBackFile:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    iput-boolean v1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mDisplayMode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    new-instance v0, Lcom/car/dvr/browser/FileBrowser$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileBrowser$1;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/car/dvr/browser/FileBrowser$5;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileBrowser$5;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mToday:Ljava/util/Calendar;

    iput v1, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    const-string v0, "Dd"

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraService;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser;->mService:Lcom/car/dvr/CameraService;

    return-object p1
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/car/dvr/browser/FileBrowser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mMoveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/car/dvr/browser/FileBrowser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser;->mMoveFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/car/dvr/browser/FileBrowser;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/car/dvr/browser/FileBrowser;)Lcom/car/dvr/browser/FileListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mAdapter:Lcom/car/dvr/browser/FileListAdapter;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileListAdapter;)Lcom/car/dvr/browser/FileListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser;->mAdapter:Lcom/car/dvr/browser/FileListAdapter;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/car/dvr/browser/FileBrowser;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mDeleteDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/car/dvr/browser/FileBrowser;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileBrowser;->setSelectedMode(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateSelectedFiles()V

    return-void
.end method

.method static synthetic access$1900(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileBrowser;->playFile(Lcom/car/dvr/browser/FileInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/car/dvr/browser/FileBrowser;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileBrowser;->showPopupWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/car/dvr/browser/FileBrowser;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/dvr/browser/FileBrowser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/car/dvr/browser/FileBrowser;)Lcom/car/dvr/browser/FileGridView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateActionBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/car/dvr/browser/FileBrowser;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/car/dvr/browser/FileBrowser;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser;->mFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateFilterFileList()V

    return-void
.end method

.method private compareFileToTime(Lcom/car/dvr/browser/FileInfo;Ljava/util/Calendar;)I
    .locals 8

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v6, v4, v0

    long-to-int v3, v6

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getLargestNumber(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v9, 0x0

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int v2, v7, v8

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v4, :cond_0

    move v3, v5

    move v4, v6

    :cond_0
    add-int v0, v6, v8

    if-le v0, v2, :cond_1

    move v1, v5

    move v2, v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ne v4, v8, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private getLastVideoFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v7, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/car/dvr/browser/FileBrowser;->mFileList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/dvr/browser/FileInfo;

    iget-object v8, v2, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    iget-object v8, v2, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    const-string v9, ".ts"

    invoke-direct {p0, v8, p1, v9}, Lcom/car/dvr/browser/FileBrowser;->parseFileNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v7

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    invoke-direct {p0, v6}, Lcom/car/dvr/browser/FileBrowser;->getLargestNumber(Ljava/util/List;)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/car/dvr/browser/FileInfo;

    iget-object v7, v7, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/car/dvr/browser/FileInfo;

    iget-object v7, v7, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method private getSelectedNumber()I
    .locals 5

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileInfo;

    iget-boolean v3, v0, Lcom/car/dvr/browser/FileInfo;->selected:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleDelete()V
    .locals 7

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/car/dvr/browser/FileBrowser;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->readLastVideoFiles()V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/car/dvr/browser/FileInfo;

    iget-boolean v5, v5, Lcom/car/dvr/browser/FileInfo;->selected:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileInfo;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->isLockType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/car/dvr/browser/FileBrowser;->isLastFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    const v5, 0x7f0a0084

    invoke-virtual {p0, v5}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/car/dvr/browser/FileBrowser;->showToast(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/car/dvr/browser/FileBrowser;->setSelectedMode(Z)V

    :goto_2
    return-void

    :cond_4
    iget-object v5, p0, Lcom/car/dvr/browser/FileBrowser;->mFileOperationHelper:Lcom/car/dvr/browser/FileOperationHelper;

    invoke-virtual {v5, v4}, Lcom/car/dvr/browser/FileOperationHelper;->delFileOrDir(Ljava/util/List;)V

    goto :goto_2
.end method

.method private initActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setLogo(I)V

    return-void
.end method

.method private isInCameraRange(Lcom/car/dvr/browser/FileInfo;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Dd"

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/car/dvr/browser/FileInfo;->isDirectory:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    iget-object v3, p1, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isLastFile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mLastFrontFile:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mLastFrontFile:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mLastBackFile:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mLastBackFile:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultipleUDiskExist()Z
    .locals 5

    const/4 v1, 0x2

    :goto_0
    const/16 v3, 0x8

    if-gt v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/udisk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/udisk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isSelectAll()Z
    .locals 2

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->getSelectedNumber()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseFileNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method private playFile(Lcom/car/dvr/browser/FileInfo;)V
    .locals 6

    const-string v3, "DVR.FileBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playFile: path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/car/dvr/browser/FileInfo;->fileType:I

    invoke-static {v5}, Lcom/car/dvr/browser/FileMediaType;->getOpenMIMEType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "video/*"

    iget v4, p1, Lcom/car/dvr/browser/FileInfo;->fileType:I

    invoke-static {v4}, Lcom/car/dvr/browser/FileMediaType;->getOpenMIMEType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.car.player"

    const-string v4, "com.car.player.MainActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget v4, p1, Lcom/car/dvr/browser/FileInfo;->fileType:I

    invoke-static {v4}, Lcom/car/dvr/browser/FileMediaType;->getOpenMIMEType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/car/dvr/browser/FileBrowser;->showDialog(I)V

    goto :goto_1
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 6

    const-string v3, "DVR.FileBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVideo: path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/car/dvr/browser/FileBrowser;->showDialog(I)V

    goto :goto_0
.end method

.method private readLastVideoFiles()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v1

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-eqz v1, :cond_0

    const-string v2, "F"

    invoke-direct {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->getLastVideoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mLastFrontFile:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "B"

    invoke-direct {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->getLastVideoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mLastBackFile:Ljava/lang/String;

    :goto_1
    const-string v2, "DVR.FileBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readLastVideoFiles: fRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastFrontFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mLastFrontFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastBackFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mLastBackFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mLastFrontFile:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mLastBackFile:Ljava/lang/String;

    goto :goto_1
.end method

.method private runFileList(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private runFileList(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "DVR.FileBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runFileList, path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    if-nez v1, :cond_2

    new-instance v1, Lcom/car/dvr/browser/FileBrowser$4;

    invoke-direct {v1, p0}, Lcom/car/dvr/browser/FileBrowser$4;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    invoke-virtual {v1, p1}, Lcom/car/dvr/browser/FileScanner;->startScanner(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setCalendarTime(Ljava/util/Calendar;III)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private setMode(Lcom/car/dvr/browser/FileBrowser$DisplayMode;)V
    .locals 2

    sget-object v0, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_GRID:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/car/dvr/browser/FileGridView;->setNumColumns(I)V

    :goto_0
    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser;->mDisplayMode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileGridView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/dvr/browser/FileGridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private setSelectAll(Z)V
    .locals 10

    iget-boolean v7, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    if-ne v7, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/car/dvr/browser/FileBrowser;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-eqz p1, :cond_2

    const v1, -0x38ea7b

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_4

    iget-object v7, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    invoke-virtual {v7, v3}, Lcom/car/dvr/browser/FileGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v7

    sget-object v9, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v7, v9, :cond_3

    const v7, 0x7f0d0050

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_3
    const v7, 0x7f0d004e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v7, 0x7f0d004b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v7, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/car/dvr/browser/FileInfo;

    iput-boolean p1, v7, Lcom/car/dvr/browser/FileInfo;->selected:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    const v7, 0x7f0d0048

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/car/dvr/browser/FileBrowser;->mAdapter:Lcom/car/dvr/browser/FileListAdapter;

    iget-object v9, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-virtual {v7, v9}, Lcom/car/dvr/browser/FileListAdapter;->setStatus(Ljava/util/List;)V

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->invalidateOptionsMenu()V

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateActionBar()V

    iput-boolean p1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private setSelectedMode(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    if-ne v3, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    invoke-virtual {v3, v0}, Lcom/car/dvr/browser/FileGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v3, 0x7f0d004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0d004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/dvr/browser/FileInfo;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/car/dvr/browser/FileInfo;->selected:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mAdapter:Lcom/car/dvr/browser/FileListAdapter;

    iget-object v5, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lcom/car/dvr/browser/FileListAdapter;->setStatus(Ljava/util/List;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v6, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    :cond_3
    iput-boolean p1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->syncSelectMode()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private showPopupWindow(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/PopupWindow;

    const/16 v3, 0x80

    const/16 v4, 0x40

    invoke-direct {v2, v0, v3, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0d0057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/car/dvr/browser/FileBrowser$6;

    invoke-direct {v2, p0}, Lcom/car/dvr/browser/FileBrowser$6;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    invoke-virtual {v2, p1, v3, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static startFileBrowser(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sput-object p1, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    sput-boolean p2, Lcom/car/dvr/browser/FileBrowser;->mFromOutOrIn:Z

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private syncSelectMode()V
    .locals 1

    new-instance v0, Lcom/car/dvr/browser/FileBrowser$2;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileBrowser$2;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateActionBar()V
    .locals 7

    iget-boolean v2, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->getSelectedNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateFilterFileList()V
    .locals 5

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFileList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v3, "Dd"

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "Bd"

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileInfo;

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->isInCameraRange(Lcom/car/dvr/browser/FileInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileInfo;

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v3}, Lcom/car/dvr/browser/FileBrowser;->compareFileToTime(Lcom/car/dvr/browser/FileInfo;Ljava/util/Calendar;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v3}, Lcom/car/dvr/browser/FileBrowser;->compareFileToTime(Lcom/car/dvr/browser/FileInfo;Ljava/util/Calendar;)I

    move-result v3

    if-gez v3, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mAdapter:Lcom/car/dvr/browser/FileListAdapter;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser;->mAdapter:Lcom/car/dvr/browser/FileListAdapter;

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mFilterList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/car/dvr/browser/FileListAdapter;->setStatus(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method private updateSelectedFiles()V
    .locals 1

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateActionBar()V

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->isSelectAll()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->invalidateOptionsMenu()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->invalidateOptionsMenu()V

    goto :goto_0
.end method


# virtual methods
.method public getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mDisplayMode:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    return-object v0
.end method

.method public isInSelectedMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x3b

    const/4 v5, 0x0

    const-string v2, "DVR.FileBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAcvitiyResult: requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/car/dvr/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    const-string v2, "start_date"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const-string v2, "end_date"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mEndDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v5, v5, v5}, Lcom/car/dvr/browser/FileBrowser;->setCalendarTime(Ljava/util/Calendar;III)V

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mEndDate:Ljava/util/Calendar;

    const/16 v3, 0x17

    invoke-direct {p0, v2, v3, v6, v6}, Lcom/car/dvr/browser/FileBrowser;->setCalendarTime(Ljava/util/Calendar;III)V

    const-string v2, "DVR.FileBrowser"

    const-string v3, "DateSelect success!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateFilterFileList()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "DVR.FileBrowser"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->setFloatView(Z)V

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/car/dvr/browser/FileBrowser;->setSelectedMode(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/car/dvr/browser/FileBrowser;->setFloatView(Z)V

    sget-object v0, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getRecordingPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    const-string v1, "Bd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d003d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->requestWindowFeature(I)Z

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->init(Landroid/content/Context;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->setContentView(I)V

    new-instance v0, Lcom/car/dvr/browser/CustomerActionBar;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/CustomerActionBar;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mCustomerActionBar:Lcom/car/dvr/browser/CustomerActionBar;

    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileGridView;

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    new-instance v1, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;

    invoke-direct {v1, p0, v2}, Lcom/car/dvr/browser/FileBrowser$ItemClickListener;-><init>(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileBrowser$1;)V

    invoke-virtual {v0, v1}, Lcom/car/dvr/browser/FileGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    new-instance v1, Lcom/car/dvr/browser/FileBrowser$ItemSelectedListener;

    invoke-direct {v1, p0, v2}, Lcom/car/dvr/browser/FileBrowser$ItemSelectedListener;-><init>(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileBrowser$1;)V

    invoke-virtual {v0, v1}, Lcom/car/dvr/browser/FileGridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mGridView:Lcom/car/dvr/browser/FileGridView;

    new-instance v1, Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;

    invoke-direct {v1, p0, v2}, Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;-><init>(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileBrowser$1;)V

    invoke-virtual {v0, v1}, Lcom/car/dvr/browser/FileGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    sget-object v0, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->setMode(Lcom/car/dvr/browser/FileBrowser$DisplayMode;)V

    new-instance v0, Lcom/car/dvr/browser/FileOperationHelper;

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/car/dvr/browser/FileOperationHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mFileOperationHelper:Lcom/car/dvr/browser/FileOperationHelper;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/dvr/CameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mServiceIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/dvr/browser/FileBrowser;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mToday:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mToday:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mEndDate:Ljava/util/Calendar;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v3, 0x7f0a002b

    const/4 v1, 0x0

    const v4, 0x108009b

    const v6, 0x104000a

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a007d

    invoke-virtual {p0, v3}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0084

    invoke-virtual {p0, v3}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser;->mStoragePath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/browser/FileBrowser$3;

    invoke-direct {v2, p0}, Lcom/car/dvr/browser/FileBrowser$3;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mDeleteDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mDeleteDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mDeleteDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a007f

    invoke-virtual {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mDeleteDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mDeleteDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/car/dvr/browser/FileThumbCache;->deInit()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileScanner;->stopScanner()V

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mService:Lcom/car/dvr/CameraService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mService:Lcom/car/dvr/CameraService;

    :cond_1
    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    iget-boolean v1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->setSelectedMode(Z)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/car/dvr/browser/FileBrowser;->setFloatView(Z)V

    sget-object v1, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getRecordingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/car/dvr/browser/FileBrowser;->mFromOutOrIn:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    const-string v2, "Bd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->finish()V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/car/dvr/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/car/dvr/browser/FileBrowser;->setFloatView(Z)V

    sget-object v0, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getRecordingPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    const-string v1, "Bd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;)Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->setSelectedMode(Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_GRID:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_LIST:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->setMode(Lcom/car/dvr/browser/FileBrowser$DisplayMode;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_GRID:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->setMode(Lcom/car/dvr/browser/FileBrowser$DisplayMode;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->handleDelete()V

    goto :goto_0

    :sswitch_4
    const-string v2, "DVR.FileBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelectAll checked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->setSelectAll(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0062 -> :sswitch_2
        0x7f0d0063 -> :sswitch_1
        0x7f0d0064 -> :sswitch_4
        0x7f0d0065 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const v5, 0x7f0d0064

    const/4 v4, 0x0

    const v3, 0x7f0d0062

    const-string v1, "DVR.FileBrowser"

    const-string v2, "onPrepareOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ro.dvr.remove"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filedel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectedMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/car/dvr/browser/FileBrowser;->mSelectAll:Z

    if-eqz v1, :cond_1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020019

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_0
    if-eqz v0, :cond_0

    const v1, 0x7f0d0065

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v1

    sget-object v2, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_GRID:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v1, v2, :cond_3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020057

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    if-eqz v0, :cond_0

    const v1, 0x7f0d0063

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020058

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a0073

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onResume()V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mStoragePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mStoragePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/dvr/browser/FileBrowser;->mCurrentPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setCameraRange(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Bd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DVR.FileBrowser"

    const-string v1, "list locked files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    const-string v1, "Bd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/car/common/CarPath;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;)Z

    :cond_1
    const-string v0, "Ff"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Bb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Ll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Rr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    :goto_1
    const-string v0, "DVR.FileBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set camera range. tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraRange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateFilterFileList()V

    goto :goto_0

    :cond_3
    const-string v0, "Dd"

    iput-object v0, p0, Lcom/car/dvr/browser/FileBrowser;->mCameraRange:Ljava/lang/String;

    goto :goto_1
.end method

.method public setTimeRange(I)V
    .locals 6

    const/16 v5, 0x3b

    const/4 v4, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iput p1, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/dvr/browser/DateSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/car/dvr/browser/FileBrowser;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    iget v1, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mEndDate:Ljava/util/Calendar;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v4, v4, v4}, Lcom/car/dvr/browser/FileBrowser;->setCalendarTime(Ljava/util/Calendar;III)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mEndDate:Ljava/util/Calendar;

    const/16 v2, 0x17

    invoke-direct {p0, v1, v2, v5, v5}, Lcom/car/dvr/browser/FileBrowser;->setCalendarTime(Ljava/util/Calendar;III)V

    invoke-direct {p0}, Lcom/car/dvr/browser/FileBrowser;->updateFilterFileList()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/car/dvr/browser/FileBrowser;->mTimeRange:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mStartDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    const/4 v3, -0x7

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mToday:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/car/dvr/browser/FileBrowser;->mEndDate:Ljava/util/Calendar;

    goto :goto_1
.end method
