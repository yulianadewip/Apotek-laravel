<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TransaksiResource\Pages;
use App\Filament\Resources\TransaksiResource\RelationManagers;
use App\Models\Transaksi;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TransaksiResource extends Resource
{
    protected static ?string $model = Transaksi::class;

    protected static ?string $label = 'Transaksi Pembelian';
    protected static ?string $pluralLabel = 'Transaksi Pembelian';

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('id_barang')
                -> label("Id Obat")
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('nama_sewa')
                -> label("Nama pembeli")
                    ->required()
                    ->maxLength(255),
                Forms\Components\Textarea::make('harga_sewa')
                -> label("Harga")
                    ->required()
                    ->columnSpanFull(),
                //Forms\Components\TextInput::make('gambar')
                //    ->required()
                //    ->maxLength(255),
					Forms\Components\FileUpload::make('gambar')
					->image()
					->imageEditor(),
                //Forms\Components\Textarea::make('lampiran')
                //    ->required()
                //    ->columnSpanFull(),
				Forms\Components\FileUpload::make('lampiran')
					->multiple()
					->acceptedFileTypes(['application/pdf'])
					->openable()
					->storeFileNamesIn('lampiran_nama'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('id_barang')
                -> label("Id Obat")
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('nama_sewa')
                -> label("Nama Pembeli")
                    ->searchable(),
                Tables\Columns\ImageColumn::make('gambar'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSewas::route('/'),
            'create' => Pages\CreateSewa::route('/create'),
            'edit' => Pages\EditSewa::route('/{record}/edit'),
        ];
    }
}
