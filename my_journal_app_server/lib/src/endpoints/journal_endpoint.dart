import 'package:serverpod/server.dart';
import '../generated/protocol.dart';

class JournalEndpoint extends Endpoint {
  // Save an entry to the database
  Future<bool> saveEntry(Session session, JournalEntry entry) async {
    await JournalEntry.db.insertRow(session, entry);
    return true;
  }

  // Fetch all entries for a specific user
  Future<List<JournalEntry>> getAllEntries(Session session, int userId) async {
    return await JournalEntry.db.find(session,
      where: (t) => t.userInfoId.equals(userId),
    );
  }
}