.class public Lcom/car/dvr/PhotoUI;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/PhotoUI$DecodeImageForReview;,
        Lcom/car/dvr/PhotoUI$SavePictureTask;
    }
.end annotation


# static fields
.field public static final HOLD_DURATION:I = 0x9c4

.field private static final PHOTO_DURATION:I = 0x258

.field private static final PHOTO_REPEAT_COUNT:I = 0x1

.field private static final PHOTO_SCALE_END:F = 1.0f

.field private static final PHOTO_SCALE_START:F = 1.2f

.field public static final SHRINK_DURATION:I = 0x190

.field public static final SLIDE_DURATION:I = 0x44c

.field private static final TAG:Ljava/lang/String; = "DVR.PhotoUI"


# instance fields
.field private backPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private frontPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mActivity:Lcom/car/dvr/CameraActivity;

.field private mBounceAnimation:Landroid/animation/AnimatorSet;

.field private mCaptureAnimator:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mLargeId:I

.field private mLastPhoto:Ljava/lang/String;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPreview:Landroid/widget/ImageView;

.field private mRecord:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mService:Lcom/car/dvr/CameraService;

.field private mTakePictureTimer:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraService;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/PhotoUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/dvr/PhotoUI$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/PhotoUI$1;-><init>(Lcom/car/dvr/PhotoUI;)V

    iput-object v0, p0, Lcom/car/dvr/PhotoUI;->mTakePictureTimer:Ljava/lang/Runnable;

    new-instance v0, Lcom/car/dvr/PhotoUI$2;

    invoke-direct {v0, p0}, Lcom/car/dvr/PhotoUI$2;-><init>(Lcom/car/dvr/PhotoUI;)V

    iput-object v0, p0, Lcom/car/dvr/PhotoUI;->frontPictureCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/car/dvr/PhotoUI$3;

    invoke-direct {v0, p0}, Lcom/car/dvr/PhotoUI$3;-><init>(Lcom/car/dvr/PhotoUI;)V

    iput-object v0, p0, Lcom/car/dvr/PhotoUI;->backPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p1, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    iput-object p3, p0, Lcom/car/dvr/PhotoUI;->mRootView:Landroid/view/View;

    iput-object p2, p0, Lcom/car/dvr/PhotoUI;->mService:Lcom/car/dvr/CameraService;

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v0}, Lcom/car/dvr/CameraActivity;->getHistoryView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/PhotoUI;->mPreview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/dvr/PhotoUI;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/dvr/PhotoUI;->mRecord:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/PhotoUI;)Lcom/car/dvr/CameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/dvr/PhotoUI;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/PhotoUI;->mLargeId:I

    return v0
.end method

.method static synthetic access$200(Lcom/car/dvr/PhotoUI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mTakePictureTimer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/dvr/PhotoUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/car/dvr/PhotoUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PhotoUI;->mLastPhoto:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/car/dvr/PhotoUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/PhotoUI;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$602(Lcom/car/dvr/PhotoUI;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/car/dvr/PhotoUI;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$702(Lcom/car/dvr/PhotoUI;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private getPictureCallback(I)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->frontPictureCallback:Landroid/hardware/Camera$PictureCallback;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->backPictureCallback:Landroid/hardware/Camera$PictureCallback;

    goto :goto_0
.end method


# virtual methods
.method protected enablePhotoUI(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI;->mRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public isLastPhotoExist()Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/car/dvr/PhotoUI;->mLastPhoto:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v2}, Lcom/car/dvr/CameraActivity;->getInAction()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v2}, Lcom/car/dvr/CameraActivity;->getLargeId()I

    move-result v2

    iput v2, p0, Lcom/car/dvr/PhotoUI;->mLargeId:I

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mService:Lcom/car/dvr/CameraService;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/car/dvr/PhotoUI;->mLargeId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v2}, Lcom/car/dvr/CameraActivity;->checkStorageDevice()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v2, v6}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "DVR.PhotoUI"

    const-string v3, "take large picture start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mService:Lcom/car/dvr/CameraService;

    iget v3, p0, Lcom/car/dvr/PhotoUI;->mLargeId:I

    iget v4, p0, Lcom/car/dvr/PhotoUI;->mLargeId:I

    invoke-direct {p0, v4}, Lcom/car/dvr/PhotoUI;->getPictureCallback(I)Landroid/hardware/Camera$PictureCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/car/dvr/CameraService;->takePicture(ILandroid/hardware/Camera$PictureCallback;)V

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/dvr/PhotoUI;->mTakePictureTimer:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/dvr/PhotoUI;->mTakePictureTimer:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget v2, p0, Lcom/car/dvr/PhotoUI;->mLargeId:I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v2, v3, :cond_3

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :goto_2
    const-string v2, "DVR.PhotoUI"

    const-string v3, "take small picture start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mService:Lcom/car/dvr/CameraService;

    invoke-direct {p0, v1}, Lcom/car/dvr/PhotoUI;->getPictureCallback(I)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/car/dvr/CameraService;->takePicture(ILandroid/hardware/Camera$PictureCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DVR.PhotoUI"

    const-string v3, "take small picture failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "DVR.PhotoUI"

    const-string v3, "take large picture failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mActivity:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v2, v6}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0022
        :pswitch_0
    .end packed-switch
.end method

.method public startBounceAnimation(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x258

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const-string v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-string v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/car/dvr/PhotoUI$5;

    invoke-direct {v3, p0, p1}, Lcom/car/dvr/PhotoUI$5;-><init>(Lcom/car/dvr/PhotoUI;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/car/dvr/PhotoUI;->mBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startCaptureAnimation(Landroid/view/View;)V
    .locals 14

    iget-object v7, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    cmpl-float v7, v4, v5

    if-lez v7, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    const-string v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v3, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {p1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x190

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v3, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {p1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x190

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v13, v0

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {p1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x190

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v13, v1

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {p1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x190

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v7, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/car/dvr/PhotoUI$4;

    invoke-direct {v8, p0, p1}, Lcom/car/dvr/PhotoUI$4;-><init>(Lcom/car/dvr/PhotoUI;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, p0, Lcom/car/dvr/PhotoUI;->mCaptureAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    move v3, v5

    goto/16 :goto_0
.end method
