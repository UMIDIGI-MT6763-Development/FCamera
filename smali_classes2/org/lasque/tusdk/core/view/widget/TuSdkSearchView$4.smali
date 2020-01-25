.class Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextFieldClickClear(Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->isClearClicked:Z

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->closeSearchModel()V

    return-void
.end method
