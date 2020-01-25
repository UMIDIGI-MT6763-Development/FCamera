.class Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->b(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->d(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView$1;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;->c(Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
