.class public Lcom/car/dvr/browser/FileScanner;
.super Ljava/lang/Object;
.source "FileScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/browser/FileScanner$SearchReq;,
        Lcom/car/dvr/browser/FileScanner$FileSortReq;,
        Lcom/car/dvr/browser/FileScanner$FileScannerReq;
    }
.end annotation


# static fields
.field public static final RESULT_TYPE_SCANNER:I = 0x1

.field public static final RESULT_TYPE_SEARCH:I = 0x2

.field public static final RESULT_TYPE_SORT:I = 0x3

.field public static final SORY_BY_NAME:I = 0x1

.field public static final SORY_BY_SIZE_DOWN:I = 0x5

.field public static final SORY_BY_SIZE_UP:I = 0x4

.field public static final SORY_BY_TIME_DOWN:I = 0x3

.field public static final SORY_BY_TIME_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DVR.FileScanner"


# instance fields
.field mFileComByName:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComBySizeDown:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComBySizeUp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComByTimeDown:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFileComByTimeUp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastScannerReq:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

.field private mScannerThread:Lcom/car/util/WorkThread;

.field private mSortType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/car/dvr/browser/FileScanner;->mSortType:I

    new-instance v0, Lcom/car/dvr/browser/FileScanner$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileScanner$1;-><init>(Lcom/car/dvr/browser/FileScanner;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByName:Ljava/util/Comparator;

    new-instance v0, Lcom/car/dvr/browser/FileScanner$2;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileScanner$2;-><init>(Lcom/car/dvr/browser/FileScanner;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComBySizeUp:Ljava/util/Comparator;

    new-instance v0, Lcom/car/dvr/browser/FileScanner$3;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileScanner$3;-><init>(Lcom/car/dvr/browser/FileScanner;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComBySizeDown:Ljava/util/Comparator;

    new-instance v0, Lcom/car/dvr/browser/FileScanner$4;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileScanner$4;-><init>(Lcom/car/dvr/browser/FileScanner;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByTimeUp:Ljava/util/Comparator;

    new-instance v0, Lcom/car/dvr/browser/FileScanner$5;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileScanner$5;-><init>(Lcom/car/dvr/browser/FileScanner;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByTimeDown:Ljava/util/Comparator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/browser/FileScanner;)Lcom/car/dvr/browser/FileScanner$FileScannerReq;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mLastScannerReq:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    return-object v0
.end method

.method static synthetic access$002(Lcom/car/dvr/browser/FileScanner;Lcom/car/dvr/browser/FileScanner$FileScannerReq;)Lcom/car/dvr/browser/FileScanner$FileScannerReq;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner;->mLastScannerReq:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    return-object p1
.end method

.method static synthetic access$200(Lcom/car/dvr/browser/FileScanner;I)Ljava/util/Comparator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileScanner;->getDirSortComp(I)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/dvr/browser/FileScanner;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileScanner;->beWriting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/car/dvr/browser/FileScanner;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/browser/FileScanner;->mSortType:I

    return v0
.end method

.method static synthetic access$500(Lcom/car/dvr/browser/FileScanner;I)Ljava/util/Comparator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileScanner;->getFileSortComp(I)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/dvr/browser/FileScanner;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private beWriting(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const-string v3, "sys.dvr.recordfile.front"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "sys.dvr.recordfile.back"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDirSortComp(I)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByName:Ljava/util/Comparator;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByName:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByTimeDown:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByTimeUp:Ljava/util/Comparator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getFileSortComp(I)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByName:Ljava/util/Comparator;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByName:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComBySizeDown:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComBySizeUp:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByTimeDown:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mFileComByTimeUp:Ljava/util/Comparator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getScanneringPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mLastScannerReq:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mLastScannerReq:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v0, v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v0}, Lcom/car/util/WorkThread;->exit()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    return-void
.end method

.method public onResult(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public searchFileByName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    if-nez v1, :cond_2

    new-instance v1, Lcom/car/util/WorkThread;

    invoke-direct {v1}, Lcom/car/util/WorkThread;-><init>()V

    iput-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1}, Lcom/car/util/WorkThread;->start()V

    :cond_2
    new-instance v0, Lcom/car/dvr/browser/FileScanner$SearchReq;

    invoke-direct {v0, p0, p1, p2}, Lcom/car/dvr/browser/FileScanner$SearchReq;-><init>(Lcom/car/dvr/browser/FileScanner;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1, v0}, Lcom/car/util/WorkThread;->isDuplicateWorking(Lcom/car/util/Match4Req;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1, v0}, Lcom/car/util/WorkThread;->addReq(Lcom/car/util/WorkReq;)V

    goto :goto_0
.end method

.method public setSortType(ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/car/dvr/browser/FileScanner;->mSortType:I

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    if-nez v1, :cond_2

    new-instance v1, Lcom/car/util/WorkThread;

    invoke-direct {v1}, Lcom/car/util/WorkThread;-><init>()V

    iput-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1}, Lcom/car/util/WorkThread;->start()V

    :cond_2
    new-instance v0, Lcom/car/dvr/browser/FileScanner$FileSortReq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/car/dvr/browser/FileScanner$FileSortReq;-><init>(Lcom/car/dvr/browser/FileScanner;ILjava/util/ArrayList;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1, v0}, Lcom/car/util/WorkThread;->isDuplicateWorking(Lcom/car/util/Match4Req;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1, v0}, Lcom/car/util/WorkThread;->addReq(Lcom/car/util/WorkReq;)V

    goto :goto_0
.end method

.method public startScanner(Ljava/lang/String;)V
    .locals 1

    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/car/dvr/browser/FileScanner;->startScanner(Ljava/lang/String;I)V

    return-void
.end method

.method public startScanner(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    if-nez v1, :cond_2

    new-instance v1, Lcom/car/util/WorkThread;

    invoke-direct {v1}, Lcom/car/util/WorkThread;-><init>()V

    iput-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1}, Lcom/car/util/WorkThread;->start()V

    :cond_2
    new-instance v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/car/dvr/browser/FileScanner$FileScannerReq;-><init>(Lcom/car/dvr/browser/FileScanner;Ljava/lang/String;Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1, v0}, Lcom/car/util/WorkThread;->isDuplicateWorking(Lcom/car/util/Match4Req;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1}, Lcom/car/util/WorkThread;->cancelReqsList()V

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v1, v0}, Lcom/car/util/WorkThread;->addReq(Lcom/car/util/WorkReq;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mLastScannerReq:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    goto :goto_0
.end method

.method public stopScanner()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mScannerThread:Lcom/car/util/WorkThread;

    invoke-virtual {v0}, Lcom/car/util/WorkThread;->cancelReqsList()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner;->mLastScannerReq:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    return-void
.end method
