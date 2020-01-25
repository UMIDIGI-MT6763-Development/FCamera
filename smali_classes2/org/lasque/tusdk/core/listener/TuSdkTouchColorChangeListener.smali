.class public Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

.field private b:I


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    return-void
.end method

.method private a(Landroid/view/View;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->getFilter()[F

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->b:I

    invoke-static {p1, p2, v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->changeColorFilter(Landroid/graphics/drawable/ColorDrawable;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;I)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->b:I

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->changeFilter(Landroid/graphics/drawable/Drawable;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    :goto_0
    return-void
.end method

.method public static bindTouch(Landroid/view/View;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;-><init>(Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    new-instance v1, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    invoke-direct {v1, p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;-><init>(Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bindTouchDark(Landroid/view/View;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->DARK:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->bindTouch(Landroid/view/View;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public static bindTouchLight(Landroid/view/View;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->LIGHT:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->bindTouch(Landroid/view/View;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public static changeColorFilter(Landroid/graphics/drawable/ColorDrawable;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return p2

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/ColorUtils;->getColor(Landroid/graphics/drawable/ColorDrawable;)I

    move-result p2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->getFilter()[F

    move-result-object p1

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/ColorUtils;->setColorFilter(Landroid/graphics/drawable/ColorDrawable;[F)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lorg/lasque/tusdk/core/utils/ColorUtils;->setColor(Landroid/graphics/drawable/ColorDrawable;I)V

    :goto_0
    return p2
.end method

.method public static changeFilter(Landroid/graphics/drawable/Drawable;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->getFilter()[F

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public static clearColorType(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->changeFilter(Landroid/graphics/drawable/Drawable;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    return-void
.end method

.method public static setDark(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->DARK:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->changeFilter(Landroid/graphics/drawable/Drawable;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    return-void
.end method

.method public static setLight(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->LIGHT:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->changeFilter(Landroid/graphics/drawable/Drawable;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    return-void
.end method

.method public static viewTouchDarkListener()Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    sget-object v1, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->DARK:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;-><init>(Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    return-object v0
.end method

.method public static viewTouchLightListener()Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    sget-object v1, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->LIGHT:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;-><init>(Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    return-object v0
.end method


# virtual methods
.method public enabledChanged(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->a(Landroid/view/View;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 p2, 0x0

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->a(Landroid/view/View;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    :cond_1
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public selectedChanged(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->a(Landroid/view/View;Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;)V

    return-void
.end method
