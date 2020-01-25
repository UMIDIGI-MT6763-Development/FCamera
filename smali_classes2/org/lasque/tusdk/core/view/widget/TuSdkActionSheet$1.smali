.class Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$1;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSafeClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;)V

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->dismiss()V

    return-void
.end method
