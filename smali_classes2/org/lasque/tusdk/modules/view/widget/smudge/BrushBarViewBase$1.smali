.class Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrushPackageStatusChanged(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$2;->a:[I

    invoke-virtual {p3}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->refreshBrushDatas()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
