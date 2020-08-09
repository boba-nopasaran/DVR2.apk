.class public Lorg/opencv/video/DualTVL1OpticalFlow;
.super Lorg/opencv/video/DenseOpticalFlow;
.source "DualTVL1OpticalFlow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/opencv/video/DenseOpticalFlow;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/video/DualTVL1OpticalFlow;
    .locals 2

    new-instance v0, Lorg/opencv/video/DualTVL1OpticalFlow;

    invoke-direct {v0, p0, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;-><init>(J)V

    return-object v0
.end method

.method public static create()Lorg/opencv/video/DualTVL1OpticalFlow;
    .locals 2

    invoke-static {}, Lorg/opencv/video/DualTVL1OpticalFlow;->create_1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->__fromPtr__(J)Lorg/opencv/video/DualTVL1OpticalFlow;

    move-result-object v0

    return-object v0
.end method

.method public static create(DDDIIDIIDDIZ)Lorg/opencv/video/DualTVL1OpticalFlow;
    .locals 2

    invoke-static/range {p0 .. p17}, Lorg/opencv/video/DualTVL1OpticalFlow;->create_0(DDDIIDIIDDIZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->__fromPtr__(J)Lorg/opencv/video/DualTVL1OpticalFlow;

    move-result-object v0

    return-object v0
.end method

.method private static native create_0(DDDIIDIIDDIZ)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getEpsilon_0(J)D
.end method

.method private static native getGamma_0(J)D
.end method

.method private static native getInnerIterations_0(J)I
.end method

.method private static native getLambda_0(J)D
.end method

.method private static native getMedianFiltering_0(J)I
.end method

.method private static native getOuterIterations_0(J)I
.end method

.method private static native getScaleStep_0(J)D
.end method

.method private static native getScalesNumber_0(J)I
.end method

.method private static native getTau_0(J)D
.end method

.method private static native getTheta_0(J)D
.end method

.method private static native getUseInitialFlow_0(J)Z
.end method

.method private static native getWarpingsNumber_0(J)I
.end method

.method private static native setEpsilon_0(JD)V
.end method

.method private static native setGamma_0(JD)V
.end method

.method private static native setInnerIterations_0(JI)V
.end method

.method private static native setLambda_0(JD)V
.end method

.method private static native setMedianFiltering_0(JI)V
.end method

.method private static native setOuterIterations_0(JI)V
.end method

.method private static native setScaleStep_0(JD)V
.end method

.method private static native setScalesNumber_0(JI)V
.end method

.method private static native setTau_0(JD)V
.end method

.method private static native setTheta_0(JD)V
.end method

.method private static native setUseInitialFlow_0(JZ)V
.end method

.method private static native setWarpingsNumber_0(JI)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->delete(J)V

    return-void
.end method

.method public getEpsilon()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getEpsilon_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGamma()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getGamma_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInnerIterations()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getInnerIterations_0(J)I

    move-result v0

    return v0
.end method

.method public getLambda()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getLambda_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMedianFiltering()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getMedianFiltering_0(J)I

    move-result v0

    return v0
.end method

.method public getOuterIterations()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getOuterIterations_0(J)I

    move-result v0

    return v0
.end method

.method public getScaleStep()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getScaleStep_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScalesNumber()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getScalesNumber_0(J)I

    move-result v0

    return v0
.end method

.method public getTau()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getTau_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getTheta_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getUseInitialFlow()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getUseInitialFlow_0(J)Z

    move-result v0

    return v0
.end method

.method public getWarpingsNumber()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/video/DualTVL1OpticalFlow;->getWarpingsNumber_0(J)I

    move-result v0

    return v0
.end method

.method public setEpsilon(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setEpsilon_0(JD)V

    return-void
.end method

.method public setGamma(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setGamma_0(JD)V

    return-void
.end method

.method public setInnerIterations(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setInnerIterations_0(JI)V

    return-void
.end method

.method public setLambda(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setLambda_0(JD)V

    return-void
.end method

.method public setMedianFiltering(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setMedianFiltering_0(JI)V

    return-void
.end method

.method public setOuterIterations(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setOuterIterations_0(JI)V

    return-void
.end method

.method public setScaleStep(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setScaleStep_0(JD)V

    return-void
.end method

.method public setScalesNumber(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setScalesNumber_0(JI)V

    return-void
.end method

.method public setTau(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setTau_0(JD)V

    return-void
.end method

.method public setTheta(D)V
    .locals 3

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/video/DualTVL1OpticalFlow;->setTheta_0(JD)V

    return-void
.end method

.method public setUseInitialFlow(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setUseInitialFlow_0(JZ)V

    return-void
.end method

.method public setWarpingsNumber(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/video/DualTVL1OpticalFlow;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/video/DualTVL1OpticalFlow;->setWarpingsNumber_0(JI)V

    return-void
.end method
