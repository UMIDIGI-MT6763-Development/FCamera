.class Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->bindSoftInputEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$1;->a:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$1;->a:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->cancelEditTextFocus()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
