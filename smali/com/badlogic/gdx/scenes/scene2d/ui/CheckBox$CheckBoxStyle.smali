.class public Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckBoxStyle"
.end annotation


# instance fields
.field public checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkboxOffDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>()V

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOffDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOffDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
