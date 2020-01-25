.class Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSafeClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocus()Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->onSubmitSearch()Z

    return-void
.end method
