.class Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;
.super Lorg/lasque/tusdk/core/listener/AnimationListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/lasque/tusdk/core/activity/TuSdkFragment;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/activity/TuSdkFragment;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;->b:Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;->a:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/listener/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;->b:Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;->a:Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a(Lorg/lasque/tusdk/core/activity/TuSdkFragment;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->onFragmentAnimationEnd(ZZ)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragment$1;->b:Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->a(Lorg/lasque/tusdk/core/activity/TuSdkFragment;Z)Z

    return-void
.end method
