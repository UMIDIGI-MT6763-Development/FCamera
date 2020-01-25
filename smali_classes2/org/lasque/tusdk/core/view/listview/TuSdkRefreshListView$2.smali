.class Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->removeViewWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$2;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$2;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->onRemoveViewAnimationEnd()V

    return-void
.end method
