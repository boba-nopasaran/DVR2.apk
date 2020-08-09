.class public Lorg/opencv/videoio/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_3()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_2(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_1(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/opencv/videoio/VideoCapture;->VideoCapture_0(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-void
.end method

.method private static native VideoCapture_0(Ljava/lang/String;I)J
.end method

.method private static native VideoCapture_1(Ljava/lang/String;)J
.end method

.method private static native VideoCapture_2(I)J
.end method

.method private static native VideoCapture_3()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/videoio/VideoCapture;
    .locals 2

    new-instance v0, Lorg/opencv/videoio/VideoCapture;

    invoke-direct {v0, p0, p1}, Lorg/opencv/videoio/VideoCapture;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method private static native get_0(JI)D
.end method

.method private static native grab_0(J)Z
.end method

.method private static native isOpened_0(J)Z
.end method

.method private static native open_0(JLjava/lang/String;I)Z
.end method

.method private static native open_1(JLjava/lang/String;)Z
.end method

.method private static native open_2(JII)Z
.end method

.method private static native open_3(JI)Z
.end method

.method private static native read_0(JJ)Z
.end method

.method private static native release_0(J)V
.end method

.method private static native retrieve_0(JJI)Z
.end method

.method private static native retrieve_1(JJ)Z
.end method

.method private static native set_0(JID)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoCapture;->delete(J)V

    return-void
.end method

.method public get(I)D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/videoio/VideoCapture;->get_0(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    return-wide v0
.end method

.method public grab()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoCapture;->grab_0(J)Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoCapture;->isOpened_0(J)Z

    move-result v0

    return v0
.end method

.method public open(I)Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/videoio/VideoCapture;->open_3(JI)Z

    move-result v0

    return v0
.end method

.method public open(II)Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/videoio/VideoCapture;->open_2(JII)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/videoio/VideoCapture;->open_1(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/videoio/VideoCapture;->open_0(JLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public read(Lorg/opencv/core/Mat;)Z
    .locals 4

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/videoio/VideoCapture;->read_0(JJ)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoCapture;->release_0(J)V

    return-void
.end method

.method public retrieve(Lorg/opencv/core/Mat;)Z
    .locals 4

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/videoio/VideoCapture;->retrieve_1(JJ)Z

    move-result v0

    return v0
.end method

.method public retrieve(Lorg/opencv/core/Mat;I)Z
    .locals 4

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/videoio/VideoCapture;->retrieve_0(JJI)Z

    move-result v0

    return v0
.end method

.method public set(ID)Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoCapture;->nativeObj:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/opencv/videoio/VideoCapture;->set_0(JID)Z

    move-result v0

    return v0
.end method
