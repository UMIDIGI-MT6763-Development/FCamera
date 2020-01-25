.class public abstract Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;,
        Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;
    }
.end annotation


# static fields
.field public static final MAX_SLIDE_DISTANCE:F = 0.3f

.field public static final MAX_SLIDE_SPEED:I = 0x3e8


# instance fields
.field private a:I

.field private b:I

.field private c:Lorg/lasque/tusdk/core/type/ActivityAnimType;

.field private d:Lorg/lasque/tusdk/core/type/ActivityAnimType;

.field private e:Lorg/lasque/tusdk/core/type/ActivityAnimType;

.field private f:Lorg/lasque/tusdk/core/type/ActivityAnimType;

.field private g:Landroid/support/v4/app/Fragment;

.field private h:I

.field private i:Z

.field private j:Landroid/view/VelocityTracker;

.field private k:Landroid/graphics/PointF;

.field private l:F

.field private m:Z

.field private n:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

.field private o:Z

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->l:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->initActivity()V

    return-void
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fragmentTransmit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->getTransmit()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "fragmentClass"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->pushFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;ZZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(ITT;ZZ",
            "Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0, v0, p3, p5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a(Landroid/support/v4/app/FragmentTransaction;ZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V

    sget-object v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->replace:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    if-eq p5, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->hiddenLastFragment(Landroid/support/v4/app/FragmentTransaction;)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->push:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    if-ne p5, v1, :cond_1

    iput-object p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->g:Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, p1, p2, p5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->bindFragmentChangeType(Landroid/support/v4/app/FragmentTransaction;ILandroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentTransaction;ZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->replace:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->f:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result p2

    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->f:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-interface {p3}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    return-void

    :cond_0
    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->e:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->d:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->e:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-nez p3, :cond_2

    iget-object p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->d:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-interface {p2}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result p2

    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->d:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-interface {p3}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->d:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {p3}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result p2

    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->e:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-interface {p3}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result p2

    iget-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->d:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-interface {p3}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result p3

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->e:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->e:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v2, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p1, p1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of v0, p1, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onBackForSlide()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v2
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->o:Z

    return p1
.end method

.method private static b(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityPresentAnimType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getAnimType(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getEnterAnim()I

    move-result v2

    invoke-interface {v1}, Lorg/lasque/tusdk/core/type/ActivityAnimType;->getExitAnim()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->overridePendingTransition(II)V

    :cond_0
    const-string v1, "activityDismissAnimType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getAnimType(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/ActivityAnimType;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->c:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->i:Z

    const-string v2, "wantFullScreen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->i:Z

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private d()V
    .locals 8

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityFilpAction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x12c

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->rotate3dAnimtor(Landroid/view/View;IFFFFLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$3;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$3;-><init>(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->p:Landroid/os/Handler;

    return-void
.end method

.method private f()Z
    .locals 5

    iget v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->h:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->e()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->o:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->o:Z

    iget v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->h:I

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->toast(Landroid/content/Context;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->p:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->onApplicationWillExit()V

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->exitApp()V

    return v2
.end method


# virtual methods
.method public backStackEntryCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method protected bindFragmentChangeType(Landroid/support/v4/app/FragmentTransaction;ILandroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Landroid/support/v4/app/FragmentTransaction;",
            "ITT;",
            "Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$4;->a:[I

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :goto_0
    :pswitch_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bindSoftInputEvent()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$1;-><init>(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public cancelEditTextFocus()Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocus()Z

    move-result v0

    return v0
.end method

.method public checkIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const-string v1, "checkIntent: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method protected computerSildeBack(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->hanlderSlideBackDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public dismissActivity()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->finish()V

    return-void
.end method

.method public dismissActivityWithAnim()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->c:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->dismissActivityWithAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    return-void
.end method

.method public dismissActivityWithAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->dismissActivityWithAnim(Landroid/app/Activity;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;->onActivityKeyDispatcher(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->computerSildeBack(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public equalViewIds(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getViewId(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getViewId(Landroid/view/View;)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public filpModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "ZZ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->buildModalActivityIntent(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)Lorg/lasque/tusdk/core/TuSdkIntent;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v6, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;

    invoke-direct {v6, p0, p1, p4}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;-><init>(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;Lorg/lasque/tusdk/core/TuSdkIntent;Z)V

    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static/range {v0 .. v6}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->rotate3dAnimtor(Landroid/view/View;IFFFFLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected abstract getAnimType(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/ActivityAnimType;
.end method

.method public getDismissAnimType()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->c:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-object v0
.end method

.method protected getLastFragment()Landroid/support/v4/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->g:Landroid/support/v4/app/Fragment;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getResColor(I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getResString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getResString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getResString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 3

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->loadView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getIDResId(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewId(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    return p1
.end method

.method protected hanlderSlideBackDown(Landroid/view/MotionEvent;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->isSupportSlideBack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->k:Landroid/graphics/PointF;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected hiddenLastFragment(Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onPauseFragment()V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method

.method protected initActivity()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->setRootView(II)V

    return-void
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public isDispatchkeyListener(I)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->n:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;->onActivityKeyDispatcher(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;I)Z

    move-result p1

    return p1
.end method

.method public isFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->i:Z

    return v0
.end method

.method public joinFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;)V"
        }
    .end annotation

    iget v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b:I

    sget-object v5, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->join:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a(ILandroid/support/v4/app/Fragment;ZZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V

    return-void
.end method

.method protected onApplicationWillExit()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->isDispatchkeyListener(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->m:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->backStackEntryCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->dismissActivityWithAnim()V

    return-void

    :cond_3
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->m:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onResumeFragment()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->m:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->c()V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->register(Landroid/app/Activity;)V

    iget p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->initView()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b()V

    iget p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->remove(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->isDispatchkeyListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {v1, p1, p2}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getLastFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b(Landroid/view/MotionEvent;)F

    move-result p1

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->l:F

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b(Landroid/view/MotionEvent;)F

    move-result p1

    iget v2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->l:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    invoke-interface {v0, p0, v1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;->onActivityTouchMotionDispatcher(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;Z)Z

    goto :goto_0

    :cond_4
    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;->onActivityTouchMotionDispatcher(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;Z)Z

    goto :goto_0

    :goto_1
    return v1

    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public popFragment()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->m:Z

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public popFragment(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->m:Z

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public popFragmentRoot()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->g:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->m:Z

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public presentActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZZ)V"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public presentActivity(Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->presentActivity(Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public presentActivity(Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZZ)V"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/activity/ActivityHelper;->presentActivity(Landroid/app/Activity;Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->presentActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "ZZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->presentActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;ZZZ)V

    return-void
.end method

.method public presentModalNavigationActivity(Ljava/lang/Class;Ljava/lang/Class;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            "Z)V"
        }
    .end annotation

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/support/v4/app/Fragment;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->presentModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method

.method public pushFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->pushFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public pushFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;Z)V"
        }
    .end annotation

    iget v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b:I

    sget-object v5, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->push:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a(ILandroid/support/v4/app/Fragment;ZZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V

    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;)V"
        }
    .end annotation

    iget v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b:I

    sget-object v5, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->replace:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a(ILandroid/support/v4/app/Fragment;ZZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V

    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->f:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    iget v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b:I

    sget-object v5, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->replace:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a(ILandroid/support/v4/app/Fragment;ZZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V

    return-void
.end method

.method public setActivityKeyListener(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->n:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    return-void
.end method

.method public setAppExitInfoId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->h:I

    return-void
.end method

.method public setRootView(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a:I

    iput p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b:I

    return-void
.end method

.method public setfragmentChangeAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->setfragmentChangeAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V

    return-void
.end method

.method public setfragmentChangeAnim(Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->d:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    iput-object p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->e:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    iput-object p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->f:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-void
.end method

.method public tansformFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;)V"
        }
    .end annotation

    iget v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->b:I

    sget-object v5, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;->tansform:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->a(ILandroid/support/v4/app/Fragment;ZZLorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$FragmentChangeType;)V

    return-void
.end method

.method public wantFullScreen(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->i:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    goto :goto_0

    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    :goto_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
