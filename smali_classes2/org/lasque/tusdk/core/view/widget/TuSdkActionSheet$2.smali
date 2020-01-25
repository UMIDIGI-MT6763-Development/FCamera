.class Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$2;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityKeyDispatcher(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;I)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x52

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$2;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityTouchMotionDispatcher(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
