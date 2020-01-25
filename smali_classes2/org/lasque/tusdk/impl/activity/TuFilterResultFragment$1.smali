.class Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$1;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSafeClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$1;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->dispatcherViewClick(Landroid/view/View;)V

    return-void
.end method
