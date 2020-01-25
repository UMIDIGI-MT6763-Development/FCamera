.class Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuSdkEditTextSubmit(Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;)Z
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->onSubmitSearch()Z

    move-result p1

    return p1
.end method
