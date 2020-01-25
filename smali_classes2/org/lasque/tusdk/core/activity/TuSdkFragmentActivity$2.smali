.class Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->filpModalNavigationActivity(Ljava/lang/Class;Landroid/support/v4/app/Fragment;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/TuSdkIntent;

.field final synthetic b:Z

.field final synthetic c:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;Lorg/lasque/tusdk/core/TuSdkIntent;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;->c:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    iput-object p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;->a:Lorg/lasque/tusdk/core/TuSdkIntent;

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;->c:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;->a:Lorg/lasque/tusdk/core/TuSdkIntent;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$2;->b:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->presentActivity(Lorg/lasque/tusdk/core/TuSdkIntent;Lorg/lasque/tusdk/core/type/ActivityAnimType;Z)V

    return-void
.end method
