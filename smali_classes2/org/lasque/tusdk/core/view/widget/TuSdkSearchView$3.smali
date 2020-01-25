.class Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    iget-boolean p1, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->isClearClicked:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->isClearClicked:Z

    sget-object p1, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocus()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    iput-boolean p2, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->isFocused:Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    :goto_0
    return-void
.end method
