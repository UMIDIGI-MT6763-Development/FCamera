.class public Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;
.super Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;

# interfaces
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    return-object v0
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    return-void
.end method

.method public showDot(Z)V
    .locals 0

    return-void
.end method
