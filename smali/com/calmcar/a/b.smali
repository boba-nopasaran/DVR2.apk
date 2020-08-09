.class public final Lcom/calmcar/a/b;
.super Ljava/lang/Object;
.source "DataWatcher.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/calmcar/a/d;

.field private c:Lcom/calmcar/a/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:J

.field private g:Landroid/content/Context;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/calmcar/a/b;)Lcom/calmcar/a/d;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/a/b;->b:Lcom/calmcar/a/d;

    return-object v0
.end method

.method private a()V
    .locals 7

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/a/b;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/calmcar/a/b$1;

    invoke-direct {v1, p0}, Lcom/calmcar/a/b$1;-><init>(Lcom/calmcar/a/b;)V

    const-wide/16 v2, 0x1

    sget v4, Lcom/calmcar/dms/b;->g:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic b(Lcom/calmcar/a/b;)Lcom/calmcar/a/a;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/a/b;->c:Lcom/calmcar/a/a;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/a/b;->f:J

    iget-object v0, p0, Lcom/calmcar/a/b;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/calmcar/a/b$2;

    invoke-direct {v1, p0}, Lcom/calmcar/a/b$2;-><init>(Lcom/calmcar/a/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/a/b;->b:Lcom/calmcar/a/d;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/calmcar/a/b;->b:Lcom/calmcar/a/d;

    invoke-virtual {p0, v0}, Lcom/calmcar/a/b;->a(Lcom/calmcar/a/d;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/calmcar/a/b;->g:Landroid/content/Context;

    const-string v0, "data_watcher"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "dms_warn_normal_save"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/dms/b;->p:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "dms_warn_fatigue_save"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/dms/b;->q:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "dms_warn_phone_save"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/dms/b;->r:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "dms_warn_smoke_save"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/dms/b;->s:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "dms_warn_caution_save"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/dms/b;->t:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "dms_warn_no_face_save"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/dms/b;->u:I

    new-instance v0, Lcom/calmcar/a/d;

    invoke-direct {v0}, Lcom/calmcar/a/d;-><init>()V

    iput-object v0, p0, Lcom/calmcar/a/b;->b:Lcom/calmcar/a/d;

    new-instance v0, Lcom/calmcar/a/a;

    invoke-direct {v0}, Lcom/calmcar/a/a;-><init>()V

    iput-object v0, p0, Lcom/calmcar/a/b;->c:Lcom/calmcar/a/a;

    iget-object v0, p0, Lcom/calmcar/a/b;->b:Lcom/calmcar/a/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/calmcar/a/d;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/a/b;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/calmcar/a/b$1;

    invoke-direct {v1, p0}, Lcom/calmcar/a/b$1;-><init>(Lcom/calmcar/a/b;)V

    const-wide/16 v2, 0x1

    sget v4, Lcom/calmcar/dms/b;->g:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final a(Lcom/calmcar/a/d;)V
    .locals 4

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/calmcar/a/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/calmcar/dms/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/calmcar/dms/b;->p:I

    sget v2, Lcom/calmcar/dms/b;->k:I

    if-ge v1, v2, :cond_3

    sget-boolean v1, Lcom/calmcar/dms/b;->f:Z

    if-nez v1, :cond_2

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/calmcar/dms/b;->f:Z

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/calmcar/dms/b;->p:I

    sget v1, Lcom/calmcar/dms/b;->k:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/a/b;->f:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/dms/b;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/a/d;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->g:Lorg/opencv/core/Mat;

    iput-object v0, p1, Lcom/calmcar/a/d;->m:Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lcom/calmcar/a/b;->b()V

    sget v0, Lcom/calmcar/dms/b;->p:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/calmcar/dms/b;->p:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dms_warn_normal_save"

    sget v2, Lcom/calmcar/dms/b;->p:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/calmcar/dms/b;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/calmcar/dms/b;->f:Z

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/calmcar/dms/b;->q:I

    sget v1, Lcom/calmcar/dms/b;->l:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/a/b;->f:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/dms/b;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/a/d;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->g:Lorg/opencv/core/Mat;

    iput-object v0, p1, Lcom/calmcar/a/d;->m:Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lcom/calmcar/a/b;->b()V

    sget v0, Lcom/calmcar/dms/b;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/calmcar/dms/b;->q:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dms_warn_fatigue_save"

    sget v2, Lcom/calmcar/dms/b;->q:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_2
    sget v0, Lcom/calmcar/dms/b;->s:I

    sget v1, Lcom/calmcar/dms/b;->n:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/a/b;->f:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/dms/b;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/a/d;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->g:Lorg/opencv/core/Mat;

    iput-object v0, p1, Lcom/calmcar/a/d;->m:Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lcom/calmcar/a/b;->b()V

    sget v0, Lcom/calmcar/dms/b;->s:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/calmcar/dms/b;->s:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dms_warn_smoke_save"

    sget v2, Lcom/calmcar/dms/b;->s:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_3
    sget v0, Lcom/calmcar/dms/b;->r:I

    sget v1, Lcom/calmcar/dms/b;->m:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/a/b;->f:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/dms/b;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/a/d;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->g:Lorg/opencv/core/Mat;

    iput-object v0, p1, Lcom/calmcar/a/d;->m:Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lcom/calmcar/a/b;->b()V

    sget v0, Lcom/calmcar/dms/b;->r:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/calmcar/dms/b;->r:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dms_warn_phone_save"

    sget v2, Lcom/calmcar/dms/b;->r:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_4
    sget v0, Lcom/calmcar/dms/b;->t:I

    sget v1, Lcom/calmcar/dms/b;->o:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/a/b;->f:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/dms/b;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/a/d;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->g:Lorg/opencv/core/Mat;

    iput-object v0, p1, Lcom/calmcar/a/d;->m:Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lcom/calmcar/a/b;->b()V

    sget v0, Lcom/calmcar/dms/b;->t:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/calmcar/dms/b;->t:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dms_warn_caution_save"

    sget v2, Lcom/calmcar/dms/b;->t:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_5
    sget v0, Lcom/calmcar/dms/b;->u:I

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/a/b;->f:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/dms/b;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/a/d;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/calmcar/a/d;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/calmcar/a/d;->g:Lorg/opencv/core/Mat;

    iput-object v0, p1, Lcom/calmcar/a/d;->m:Lorg/opencv/core/Mat;

    invoke-direct {p0}, Lcom/calmcar/a/b;->b()V

    sget v0, Lcom/calmcar/dms/b;->u:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/calmcar/dms/b;->u:I

    iget-object v0, p0, Lcom/calmcar/a/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dms_warn_no_face_save"

    sget v2, Lcom/calmcar/dms/b;->u:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lorg/opencv/core/Mat;F)V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/a/b;->b:Lcom/calmcar/a/d;

    iput-object p1, v0, Lcom/calmcar/a/d;->g:Lorg/opencv/core/Mat;

    iget-object v0, p0, Lcom/calmcar/a/b;->b:Lcom/calmcar/a/d;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/calmcar/a/d;->e:Ljava/lang/String;

    return-void
.end method
