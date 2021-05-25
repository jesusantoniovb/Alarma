using SQLite;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Threading.Tasks;
using Alarma.Clases;

namespace Alarma.Datos
{
    public class DatosDB
    {
        readonly SQLiteAsyncConnection _database;

        public DatosDB(string dbPath)
        {
            _database = new SQLiteAsyncConnection(dbPath);
            _database.CreateTableAsync<DatosUser>().Wait();
        }

        public Task<List<DatosUser>> GetNotesAsync()
        {
            return _database.Table<DatosUser>().ToListAsync();
        }

        public Task<DatosUser> GetNoteAsync(int id)
        {
            return _database.Table<DatosUser>()
                            .Where(i => i.ID == id)
                            .FirstOrDefaultAsync();
        }

        public Task<int> SaveNoteAsync(DatosUser note)
        {
            if (note.ID != 0)
            {
                return _database.UpdateAsync(note);
            }
            else
            {
                return _database.InsertAsync(note);
            }
        }

        public Task<int> DeleteNoteAsync(DatosUser note)
        {
            return _database.DeleteAsync(note);
        }

        public async Task DeleteAllUsuarios()
        {
            await _database.DropTableAsync<DatosUser>();
            await _database.CreateTableAsync<DatosUser>();
        }

    }
}