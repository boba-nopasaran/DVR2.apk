.class public Lorg/opencv/video/Video;
.super Ljava/lang/Object;
.source "Video.java"


# static fields
.field private static final CV_LKFLOW_GET_MIN_EIGENVALS:I = 0x8

.field private static final CV_LKFLOW_INITIAL_GUESSES:I = 0x4

.field public static final MOTION_AFFINE:I = 0x2

.field public static final MOTION_EUCLIDEAN:I = 0x1

.field public static final MOTION_HOMOGRAPHY:I = 0x3

.field public static final MOTION_TRANSLATION:I = 0x0

.field public static final OPTFLOW_FARNEBACK_GAUSSIAN:I = 0x100

.field public static final OPTFLOW_LK_GET_MIN_EIGENVALS:I = 0x8

.field public static final OPTFLOW_USE_INITIAL_FLOW:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CamShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lorg/opencv/core/TermCriteria;)Lorg/opencv/core/RotatedRect;
    .locals 12

    const/4 v0, 0x4

    new-array v6, v0, [D

    new-instance v11, Lorg/opencv/core/RotatedRect;

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    iget v7, p2, Lorg/opencv/core/TermCriteria;->type:I

    iget v8, p2, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v9, p2, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v10}, Lorg/opencv/video/Video;->CamShift_0(JIIII[DIID)[D

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/opencv/core/RotatedRect;-><init>([D)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->x:I

    const/4 v0, 0x1

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->y:I

    const/4 v0, 0x2

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->width:I

    const/4 v0, 0x3

    aget-wide v0, v6, v0

    double-to-int v0, v0

    iput v0, p1, Lorg/opencv/core/Rect;->height:I

    :cond_0
    return-object v11
.end method

.method private static native CamShift_0(JIIII[DIID)[D
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I)I"
        }
    .end annotation

    new-instance v9, Lorg/opencv/core/Mat;

    invoke-direct {v9}, Lorg/opencv/core/Mat;-><init>()V

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v9, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p2, Lorg/opencv/core/Size;->height:D

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_1(JJDDI)I

    move-result v0

    invoke-static {v9, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v9}, Lorg/opencv/core/Mat;->release()V

    return v0
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;IZIIZ)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "IZIIZ)I"
        }
    .end annotation

    new-instance v15, Lorg/opencv/core/Mat;

    invoke-direct {v15}, Lorg/opencv/core/Mat;-><init>()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-static/range {v2 .. v14}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_0(JJDDIZIIZ)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-virtual {v15}, Lorg/opencv/core/Mat;->release()V

    return v2
.end method

.method private static native buildOpticalFlowPyramid_0(JJDDIZIIZ)I
.end method

.method private static native buildOpticalFlowPyramid_1(JJDDI)I
.end method

.method public static calcOpticalFlowFarneback(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DIIIIDI)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v14, p9

    move/from16 v16, p11

    invoke-static/range {v2 .. v16}, Lorg/opencv/video/Video;->calcOpticalFlowFarneback_0(JJJDIIIIDI)V

    return-void
.end method

.method private static native calcOpticalFlowFarneback_0(JJJDIIIIDI)V
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;)V
    .locals 14

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_2(JJJJJJ)V

    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;I)V
    .locals 19

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    move/from16 v18, p7

    invoke-static/range {v2 .. v18}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_1(JJJJJJDDI)V

    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;ILorg/opencv/core/TermCriteria;ID)V
    .locals 26

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v0, p6

    iget-wide v0, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v19, v0

    move-object/from16 v0, p8

    iget v0, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v20, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v21, v0

    move/from16 v18, p7

    move/from16 v23, p9

    move-wide/from16 v24, p10

    invoke-static/range {v2 .. v25}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_0(JJJJJJDDIIIDID)V

    return-void
.end method

.method private static native calcOpticalFlowPyrLK_0(JJJJJJDDIIIDID)V
.end method

.method private static native calcOpticalFlowPyrLK_1(JJJJJJDDI)V
.end method

.method private static native calcOpticalFlowPyrLK_2(JJJJJJ)V
.end method

.method public static createBackgroundSubtractorKNN()Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 2

    invoke-static {}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorKNN;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorKNN(IDZ)Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_0(IDZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorKNN;

    move-result-object v0

    return-object v0
.end method

.method private static native createBackgroundSubtractorKNN_0(IDZ)J
.end method

.method private static native createBackgroundSubtractorKNN_1()J
.end method

.method public static createBackgroundSubtractorMOG2()Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 2

    invoke-static {}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorMOG2;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorMOG2(IDZ)Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_0(IDZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorMOG2;

    move-result-object v0

    return-object v0
.end method

.method private static native createBackgroundSubtractorMOG2_0(IDZ)J
.end method

.method private static native createBackgroundSubtractorMOG2_1()J
.end method

.method public static createOptFlow_DualTVL1()Lorg/opencv/video/DualTVL1OpticalFlow;
    .locals 2

    invoke-static {}, Lorg/opencv/video/Video;->createOptFlow_DualTVL1_0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->__fromPtr__(J)Lorg/opencv/video/DualTVL1OpticalFlow;

    move-result-object v0

    return-object v0
.end method

.method private static native createOptFlow_DualTVL1_0()J
.end method

.method public static estimateRigidTransform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)Lorg/opencv/core/Mat;
    .locals 6

    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, v4, v5, p2}, Lorg/opencv/video/Video;->estimateRigidTransform_0(JJZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native estimateRigidTransform_0(JJZ)J
.end method

.method public static findTransformECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/video/Video;->findTransformECC_2(JJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static findTransformECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 7

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/video/Video;->findTransformECC_1(JJJI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static findTransformECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;Lorg/opencv/core/Mat;)D
    .locals 15

    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget v9, v0, Lorg/opencv/core/TermCriteria;->type:I

    move-object/from16 v0, p4

    iget v10, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-object/from16 v0, p4

    iget-wide v11, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-object/from16 v0, p5

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    invoke-static/range {v2 .. v14}, Lorg/opencv/video/Video;->findTransformECC_0(JJJIIIDJ)D

    move-result-wide v2

    return-wide v2
.end method

.method private static native findTransformECC_0(JJJIIIDJ)D
.end method

.method private static native findTransformECC_1(JJJI)D
.end method

.method private static native findTransformECC_2(JJJ)D
.end method

.method public static meanShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lorg/opencv/core/TermCriteria;)I
    .locals 11

    const/4 v0, 0x4

    new-array v6, v0, [D

    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    iget v4, p1, Lorg/opencv/core/Rect;->width:I

    iget v5, p1, Lorg/opencv/core/Rect;->height:I

    iget v7, p2, Lorg/opencv/core/TermCriteria;->type:I

    iget v8, p2, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v9, p2, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v10}, Lorg/opencv/video/Video;->meanShift_0(JIIII[DIID)I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-wide v2, v6, v1

    double-to-int v1, v2

    iput v1, p1, Lorg/opencv/core/Rect;->x:I

    const/4 v1, 0x1

    aget-wide v2, v6, v1

    double-to-int v1, v2

    iput v1, p1, Lorg/opencv/core/Rect;->y:I

    const/4 v1, 0x2

    aget-wide v2, v6, v1

    double-to-int v1, v2

    iput v1, p1, Lorg/opencv/core/Rect;->width:I

    const/4 v1, 0x3

    aget-wide v2, v6, v1

    double-to-int v1, v2

    iput v1, p1, Lorg/opencv/core/Rect;->height:I

    :cond_0
    return v0
.end method

.method private static native meanShift_0(JIIII[DIID)I
.end method
