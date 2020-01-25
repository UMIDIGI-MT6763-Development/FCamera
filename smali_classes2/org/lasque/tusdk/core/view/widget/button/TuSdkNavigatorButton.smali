.class public abstract Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
.super Lorg/lasque/tusdk/core/view/widget/button/TuSdkRelativeButton;

# interfaces
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkRelativeButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkRelativeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkRelativeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    return-object v0
.end method

.method public loadView()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkRelativeButton;->loadView()V

    return-void
.end method

.method public setType(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    return-void
.end method
