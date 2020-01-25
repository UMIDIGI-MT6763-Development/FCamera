.class Lorg/lasque/tusdk/core/activity/ActivityObserver$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/activity/ActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/activity/ActivityObserver;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/activity/ActivityObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver$1;->a:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver$1;->a:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocus(Landroid/view/View;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
