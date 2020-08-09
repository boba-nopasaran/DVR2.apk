.class public Lorg/opencv/videoio/VideoWriter;
.super Ljava/lang/Object;
.source "VideoWriter.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_4()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDLorg/opencv/core/Size;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v4, p5, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p5, Lorg/opencv/core/Size;->height:D

    move-object v0, p1

    move v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_3(Ljava/lang/String;IDDD)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDLorg/opencv/core/Size;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v4, p5, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p5, Lorg/opencv/core/Size;->height:D

    move-object v0, p1

    move v1, p2

    move-wide v2, p3

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_2(Ljava/lang/String;IDDDZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDLorg/opencv/core/Size;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    invoke-static/range {v3 .. v11}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_1(Ljava/lang/String;IIDDD)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDLorg/opencv/core/Size;Z)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v12, p7

    invoke-static/range {v3 .. v12}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_0(Ljava/lang/String;IIDDDZ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-void
.end method

.method private static native VideoWriter_0(Ljava/lang/String;IIDDDZ)J
.end method

.method private static native VideoWriter_1(Ljava/lang/String;IIDDD)J
.end method

.method private static native VideoWriter_2(Ljava/lang/String;IDDDZ)J
.end method

.method private static native VideoWriter_3(Ljava/lang/String;IDDD)J
.end method

.method private static native VideoWriter_4()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/videoio/VideoWriter;
    .locals 2

    new-instance v0, Lorg/opencv/videoio/VideoWriter;

    invoke-direct {v0, p0, p1}, Lorg/opencv/videoio/VideoWriter;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method public static fourcc(CCCC)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/opencv/videoio/VideoWriter;->fourcc_0(CCCC)I

    move-result v0

    return v0
.end method

.method private static native fourcc_0(CCCC)I
.end method

.method private static native get_0(JI)D
.end method

.method private static native isOpened_0(J)Z
.end method

.method private static native open_0(JLjava/lang/String;IIDDDZ)Z
.end method

.method private static native open_1(JLjava/lang/String;IIDDD)Z
.end method

.method private static native open_2(JLjava/lang/String;IDDDZ)Z
.end method

.method private static native open_3(JLjava/lang/String;IDDD)Z
.end method

.method private static native release_0(J)V
.end method

.method private static native set_0(JID)Z
.end method

.method private static native write_0(JJ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoWriter;->delete(J)V

    return-void
.end method

.method public get(I)D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/videoio/VideoWriter;->get_0(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-wide v0
.end method

.method public isOpened()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoWriter;->isOpened_0(J)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;IDLorg/opencv/core/Size;)Z
    .locals 13

    iget-wide v2, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p5

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v11}, Lorg/opencv/videoio/VideoWriter;->open_3(JLjava/lang/String;IDDD)Z

    move-result v2

    return v2
.end method

.method public open(Ljava/lang/String;IDLorg/opencv/core/Size;Z)Z
    .locals 13

    iget-wide v2, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p5

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v12, p6

    invoke-static/range {v2 .. v12}, Lorg/opencv/videoio/VideoWriter;->open_2(JLjava/lang/String;IDDDZ)Z

    move-result v2

    return v2
.end method

.method public open(Ljava/lang/String;IIDLorg/opencv/core/Size;)Z
    .locals 14

    iget-wide v3, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-static/range {v3 .. v13}, Lorg/opencv/videoio/VideoWriter;->open_1(JLjava/lang/String;IIDDD)Z

    move-result v2

    return v2
.end method

.method public open(Ljava/lang/String;IIDLorg/opencv/core/Size;Z)Z
    .locals 16

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v14, p7

    invoke-static/range {v3 .. v14}, Lorg/opencv/videoio/VideoWriter;->open_0(JLjava/lang/String;IIDDDZ)Z

    move-result v2

    return v2
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoWriter;->release_0(J)V

    return-void
.end method

.method public set(ID)Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/opencv/videoio/VideoWriter;->set_0(JID)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/opencv/core/Mat;)V
    .locals 4

    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/videoio/VideoWriter;->write_0(JJ)V

    return-void
.end method
