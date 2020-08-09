.class public Lorg/opencv/video/FarnebackOpticalFlow;
.super Lorg/opencv/video/DenseOpticalFlow;
.source "FarnebackOpticalFlow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/opencv/video/DenseOpticalFlow;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/video/FarnebackOpticalFlow;
    .locals 2

    new-instance v0, Lorg/opencv/video/FarnebackOpticalFlow;

    invoke-direct {v0, p0, p1}, Lorg/opencv/video/FarnebackOpticalFlow;-><init>(J)V

    return-object v0
.end method

.method public static create()Lorg/opencv/video/FarnebackOpticalFlow;
    .locals 2

    invoke-static {}, Lorg/opencv/video/FarnebackOpticalFlow;->create_1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->__fromPtr__(J)Lorg/opencv/video/FarnebackOpticalFlow;

    move-result-object v0

    return-object v0
.end method

.method public static create(IDZIIIDI)Lorg/opencv/video/FarnebackOpticalFlow;
    .locals 3

    invoke-static/range {p0 .. p9}, Lorg/opencv/video/FarnebackOpticalFlow;->create_0(IDZIIIDI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->__fromPtr__(J)Lorg/opencv/video/FarnebackOpticalFlow;

    move-result-object v0

    return-object v0
.end method

.method private static native create_0(IDZIIIDI)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getFastPyramids_0(J)Z
.end method

.method private static native getFlags_0(J)I
.end method

.method private static native getNumIters_0(J)I
.end method

.method private static native getNumLevels_0(J)I
.end method

.method private static native getPolyN_0(J)I
.end method

.method private static native getPolySigma_0(J)D
.end method

.method private static native getPyrScale_0(J)D
.end method

.method private static native getWinSize_0(J)I
.end method

.method private static native setFastPyramids_0(JZ)V
.end method

.method private static native setFlags_0(JI)V
.end method

.method private static native setNumIters_0(JI)V
.end method

.method private static native setNumLevels_0(JI)V
.end method

.method private static native setPolyN_0(JI)V
.end method

.method private static native setPolySigma_0(JD)V
.end method

.method private static native setPyrScale_0(JD)V
.end method

.method private static native setWinSize_0(JI)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->delete(J)V

    return-void
.end method

.method public getFastPyramids()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getFastPyramids_0(J)Z

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getFlags_0(J)I

    move-result v0

    return v0
.end method

.method public getNumIters()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getNumIters_0(J)I

    move-result v0

    return v0
.end method

.method public getNumLevels()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getNumLevels_0(J)I

    move-result v0

    return v0
.end method

.method public getPolyN()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getPolyN_0(J)I

    move-result v0

    return v0
.end method

.method public getPolySigma()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getPolySigma_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPyrScale()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getPyrScale_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWinSize()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/FarnebackOpticalFlow;->getWinSize_0(J)I

    move-result v0

    return v0
.end method

.method public setFastPyramids(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setFastPyramids_0(JZ)V

    return-void
.end method

.method public setFlags(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setFlags_0(JI)V

    return-void
.end method

.method public setNumIters(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setNumIters_0(JI)V

    return-void
.end method

.method public setNumLevels(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setNumLevels_0(JI)V

    return-void
.end method

.method public setPolyN(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setPolyN_0(JI)V

    return-void
.end method

.method public setPolySigma(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/FarnebackOpticalFlow;->setPolySigma_0(JD)V

    return-void
.end method

.method public setPyrScale(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/FarnebackOpticalFlow;->setPyrScale_0(JD)V

    return-void
.end method

.method public setWinSize(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/FarnebackOpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/FarnebackOpticalFlow;->setWinSize_0(JI)V

    return-void
.end method
