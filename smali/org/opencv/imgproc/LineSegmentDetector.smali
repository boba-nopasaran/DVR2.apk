.class public Lorg/opencv/imgproc/LineSegmentDetector;
.super Lorg/opencv/core/Algorithm;
.source "LineSegmentDetector.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/imgproc/LineSegmentDetector;
    .locals 2

    new-instance v0, Lorg/opencv/imgproc/LineSegmentDetector;

    invoke-direct {v0, p0, p1}, Lorg/opencv/imgproc/LineSegmentDetector;-><init>(J)V

    return-object v0
.end method

.method private static native compareSegments_0(JDDJJJ)I
.end method

.method private static native compareSegments_1(JDDJJ)I
.end method

.method private static native delete(J)V
.end method

.method private static native detect_0(JJJJJJ)V
.end method

.method private static native detect_1(JJJ)V
.end method

.method private static native drawSegments_0(JJJ)V
.end method


# virtual methods
.method public compareSegments(Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 10

    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/imgproc/LineSegmentDetector;->compareSegments_1(JDDJJ)I

    move-result v0

    return v0
.end method

.method public compareSegments(Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 14

    iget-wide v2, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p1, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/imgproc/LineSegmentDetector;->compareSegments_0(JDDJJJ)I

    move-result v2

    return v2
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6

    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/LineSegmentDetector;->detect_1(JJJ)V

    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 14

    iget-wide v2, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v13}, Lorg/opencv/imgproc/LineSegmentDetector;->detect_0(JJJJJJ)V

    return-void
.end method

.method public drawSegments(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6

    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/imgproc/LineSegmentDetector;->drawSegments_0(JJJ)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/LineSegmentDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgproc/LineSegmentDetector;->delete(J)V

    return-void
.end method
