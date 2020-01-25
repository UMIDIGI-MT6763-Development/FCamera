.class Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSafeClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->onSegmentedClicked(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;)V

    return-void
.end method
