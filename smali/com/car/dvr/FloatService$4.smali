.class Lcom/car/dvr/FloatService$4;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/FloatService;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/FloatService;


# direct methods
.method constructor <init>(Lcom/car/dvr/FloatService;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    .line 242
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$1300(Lcom/car/dvr/FloatService;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 244
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$1402(Lcom/car/dvr/FloatService;F)F

    .line 245
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$1502(Lcom/car/dvr/FloatService;F)F

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 291
    :cond_0
    :goto_0
    return v7

    .line 248
    :pswitch_0
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    iget-object v3, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v3}, Lcom/car/dvr/FloatService;->access$1700(Lcom/car/dvr/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$1602(Lcom/car/dvr/FloatService;F)F

    .line 249
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    iget-object v3, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v3}, Lcom/car/dvr/FloatService;->access$1700(Lcom/car/dvr/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$1802(Lcom/car/dvr/FloatService;F)F

    .line 250
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$1902(Lcom/car/dvr/FloatService;F)F

    .line 251
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$2002(Lcom/car/dvr/FloatService;F)F

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0d0046

    if-ne v2, v3, :cond_0

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 254
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$2100(Lcom/car/dvr/FloatService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$1200(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatService$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/car/dvr/FloatService$MyHandler;->sendEmptyMessage(I)Z

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2, v0, v1}, Lcom/car/dvr/FloatService;->access$2102(Lcom/car/dvr/FloatService;J)J

    goto :goto_0

    .line 262
    .end local v0    # "currentTime":J
    :pswitch_1
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    .line 267
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    iget-object v2, v2, Lcom/car/dvr/FloatService;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "posx"

    iget-object v4, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v4}, Lcom/car/dvr/FloatService;->access$1700(Lcom/car/dvr/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    iget-object v2, v2, Lcom/car/dvr/FloatService;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "posy"

    iget-object v4, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v4}, Lcom/car/dvr/FloatService;->access$1700(Lcom/car/dvr/FloatService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 269
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    iget-object v2, v2, Lcom/car/dvr/FloatService;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$1400(Lcom/car/dvr/FloatService;)F

    move-result v2

    iget-object v3, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v3}, Lcom/car/dvr/FloatService;->access$1900(Lcom/car/dvr/FloatService;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$1500(Lcom/car/dvr/FloatService;)F

    move-result v2

    iget-object v3, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v3}, Lcom/car/dvr/FloatService;->access$2000(Lcom/car/dvr/FloatService;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 274
    :pswitch_3
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$2200(Lcom/car/dvr/FloatService;)V

    goto/16 :goto_0

    .line 278
    :pswitch_4
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$600(Lcom/car/dvr/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/car/dvr/FloatView;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    .line 282
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    iget-object v3, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v3}, Lcom/car/dvr/FloatService;->access$800(Lcom/car/dvr/FloatService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$900(Lcom/car/dvr/FloatService;I)Z

    .line 283
    iget-object v2, p0, Lcom/car/dvr/FloatService$4;->this$0:Lcom/car/dvr/FloatService;

    const v3, 0x7f0a008b

    invoke-static {v2, v3}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 272
    :pswitch_data_1
    .packed-switch 0x7f0d0046
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
