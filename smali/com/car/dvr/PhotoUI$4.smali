.class Lcom/car/dvr/PhotoUI$4;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/PhotoUI;->startCaptureAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/PhotoUI;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/car/dvr/PhotoUI;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PhotoUI$4;->this$0:Lcom/car/dvr/PhotoUI;

    iput-object p2, p0, Lcom/car/dvr/PhotoUI$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v0}, Lcom/car/dvr/PhotoUI;->access$000(Lcom/car/dvr/PhotoUI;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v0}, Lcom/car/dvr/PhotoUI;->access$600(Lcom/car/dvr/PhotoUI;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->this$0:Lcom/car/dvr/PhotoUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/dvr/PhotoUI;->access$602(Lcom/car/dvr/PhotoUI;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    const-string v0, "DVR.PhotoUI"

    const-string v1, "animation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$4;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v0}, Lcom/car/dvr/PhotoUI;->access$000(Lcom/car/dvr/PhotoUI;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
